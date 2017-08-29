package com.fs.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
	
	
	
	@RequestMapping(value="uploadForm", method=RequestMethod.POST)
	public void uploadForm(MultipartFile file, Model model) throws Exception {
		
	}
	
	
}
