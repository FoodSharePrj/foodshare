package com.fs.controller;

import java.io.File;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fs.domain.UploadVO;
import com.fs.service.UploadService;
import com.fs.util.MediaUtils;


@RestController
public class UploadController {

	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Inject
	private UploadService service;
	
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
	
	@RequestMapping(value="/getUploadList/{bid}", method=RequestMethod.GET)
	public List<UploadVO> getUploadVOList(@PathVariable String bid) throws Exception{
		
		return service.getUploadList(bid);
	}
	
	@RequestMapping(value="/deleteFiles", method=RequestMethod.POST)
	public ResponseEntity<String> deleteFiles(@RequestParam("files[]") String[] files) throws Exception{
		
		if(files==null | files.length==0){
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}
		try {
			for(String fileName : files){
				
				new File((uploadPath+fileName).replace('/', File.separatorChar)).delete();
				service.deleteFile(fileName);
			}
		
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
	}
}
