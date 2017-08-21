package com.fs.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		HttpSession session = request.getSession();
		
		// 로그인 안 된 유저가 로그인 필요한 uri로 접근한 경우
		if(session.getAttribute("login")==null) {
			
			saveDest(request);
			
			// 로그인 페이지로 이동
			response.sendRedirect("/user/login");
			
			return false;
		}
		
		return true;
	}
	
	// 접근 시도했던 uri을 세션에 기록하는 메서드
	private void saveDest(HttpServletRequest request) {
		String uri = request.getRequestURI();
		String query = request.getQueryString();
		
		if(query==null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}
		
		String method = request.getMethod();
		if(method.equals("GET")) {
			request.getSession().setAttribute("dest", (uri+query));
		}
	}

}
