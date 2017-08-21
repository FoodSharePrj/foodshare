package com.fs.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;
import com.fs.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Inject
	UserService userService;
	
	// 회원가입 화면 이동
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String join() throws Exception {
		return "join";
	}
	
	// 로그인 화면 이동
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String loginGET() throws Exception {
		return "login";
	}
	
	// 로그인 처리
	@RequestMapping(value="/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO loginDTO, HttpSession session, Model model) throws Exception {
		
		UserVO userVO = userService.login(loginDTO);
		
		if(userVO == null) {
			return;
		}
		
		model.addAttribute("userVO", userVO);
		
		if(loginDTO.isUseCookie()) {
			userService.keepLogin(userVO.getUid(), session.getId());
		}
	}
	
	// 로그아웃 처리
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public void logout(HttpServletRequest request,	HttpServletResponse response, HttpSession session) throws Exception{
		
		Object obj = session.getAttribute("login");
		if(obj!=null){
			// 세션에 기록된 UserVO객체 삭제
			session.removeAttribute("login");
			session.invalidate();
			
			// 기록된 쿠키 삭제
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			loginCookie.setMaxAge(0);
			response.addCookie(loginCookie);
			
			// DB에 저장된 내용 업댓
			UserVO vo = (UserVO) obj;
			userService.keepLogin(vo.getUid(), session.getId());
		}
		
		response.sendRedirect("/");
	}
}
