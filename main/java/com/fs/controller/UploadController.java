package com.fs.controller;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fs.util.MediaUtils;

@Controller
public class UploadController {

	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(@RequestParam(name="fileName") String fileName) throws Exception {
		System.out.println(fileName);
		String formatName = fileName.substring(fileName.lastIndexOf('.')+1);
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;
		
		try {
			in = new FileInputStream("d:/foodshareupload"+fileName);
			
			//HttpHeaders headers = new HttpHeaders();
			MediaType mType = MediaUtils.getMediaType(formatName);
			if(mType != null) {
				//headers.setContentType(mType);
			}
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.OK);
		} catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
	
		return entity;
	}
	
	
}
