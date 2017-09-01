package com.fs.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fs.domain.UploadVO;
import com.fs.service.UploadService;
import com.fs.util.MediaUtils;

@Controller
public class UploadController {

	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Inject
	private UploadService service;
	
	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
		
		String formatName = fileName.substring(fileName.lastIndexOf('.')+1);
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;
		
		try {
			in = new FileInputStream(uploadPath+fileName);
			
			HttpHeaders headers = new HttpHeaders();
			MediaType mType = MediaUtils.getMediaType(formatName);
			if(mType != null) {
				headers.setContentType(mType);
			}
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
		} catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
	
		return entity;
	}
	
	@RequestMapping("/getUploadList/{bid}")
	public @ResponseBody List<UploadVO> getUploadVOList(@PathVariable String bid) throws Exception{
		
		return service.getUploadList(bid);
	}
}
