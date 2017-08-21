package com.fs.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
		
	// '/user/loginPost' 컨트롤러의 사전 처리
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login")!=null) {
			session.removeAttribute("login");
		}
		
		return true;
	}

	// '/user/loginPost' 컨트롤러의 사후 처리, 화면 렌더링 전
	// 로그인 정보 없이 접근하려던 페이지가 있었다면 로그인 후 그 페이지로 이동
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
		Object userVO = modelAndView.getModel().get("userVO");
		
		if(userVO != null) {
			HttpSession session = request.getSession();
			session.setAttribute("login", userVO);
			
			Cookie loginCookie = null;
			if(request.getParameter("useCookie") != null) {
				loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setMaxAge(60*60*24*7);//일주일
				response.addCookie(loginCookie);
			}else {
				loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setMaxAge(0);//0
				response.addCookie(loginCookie);
			}
			
			// 로그인을 필요로하는 uri에 접근하여 로그인페이지로 온 경우
			// 기존 접근했던 uri 정보 불러오기
			Object dest = session.getAttribute("dest");
			
			response.sendRedirect((dest!=null)?(String)dest : "/");
		}
		
	}
}
