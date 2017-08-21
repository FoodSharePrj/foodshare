package com.fs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// 화면 전환 컨트롤러
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String join() {
		return "join";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list() {
		return "list";
	}
	
	@RequestMapping(value="/detail", method = RequestMethod.GET)
	public String detail() {
		return "detail";
	}
	
}
