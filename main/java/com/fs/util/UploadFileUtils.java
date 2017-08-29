package com.fs.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

	private static final Logger logger = 
			LoggerFactory.getLogger(UploadFileUtils.class);
	
	public static String uploadFile(
							String uploadPath,
							String originalName,
							byte[] fileData) throws Exception{
		
		UUID uid = UUID.randomUUID();
			
		String savedName = uid.toString() + "_" + originalName;
		String savedPath = calcPath(uploadPath);// 저장될 경로
		File target = new File(uploadPath+savedPath, savedName);
	
		
		FileCopyUtils.copy(fileData, target);
		
		return "";
	}
	
	// /년/월/일 디렉토리 주소 문자열 생성 및 makeDir메서드 실행하여 디렉토리생성
	private static String calcPath(String uploadPath){
		
		Calendar cal = Calendar.getInstance();
		
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		String monthPath = yearPath + File.separator 
						+ new DecimalFormat("00").format((cal.get(Calendar.MONTH)+1));
		String datePath = monthPath + File.separator
						+ new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		
		logger.info(datePath);
		
		return datePath;
	}
	
	// 디렉토리 생성
	private static void makeDir(String uploadPath, String...paths){
		// 최종 디렉토리가 존재한다면 종료
		if(new File(paths[2]).exists()){
			return;
		}
		// 존재하지 않는다면 차례차례 생성
		for (String path : paths) {
			
			File dirPath = new File(uploadPath + path);
		
			if(!dirPath.exists()){
				dirPath.mkdirs();
			}
		}
	}
}
