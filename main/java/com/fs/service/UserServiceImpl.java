package com.fs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;
import com.fs.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserDAO userDAO;
	
	@Override
	public UserVO login(LoginDTO loginDTO) {
		
		return userDAO.login(loginDTO);
	}
	
	@Override
	public void keepLogin(String uid, String sessionKey) {
		
		userDAO.keepLogin(uid, sessionKey);
	}
	
	@Override
	public UserVO getUserWithSessionkey(String sessionKey) {

		return userDAO.getUserWithSessionkey(sessionKey);
	}
}
