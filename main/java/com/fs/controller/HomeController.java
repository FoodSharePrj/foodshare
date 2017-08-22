package com.fs.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.fs.domain.UserVO;
import com.fs.service.UserService;

@Controller
public class HomeController {
	
	@Inject
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) throws Exception {
		
		// 자동로그인 쿠키 유무에 따른 처리
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		if(loginCookie != null) {
			
			UserVO userVO = userService.getUserWithSessionkey(loginCookie.getValue());
			
			if(userVO != null) {
				
				HttpSession session = request.getSession();
				session.setAttribute("login", userVO);
			}
		}
		return "index";
	}
}
