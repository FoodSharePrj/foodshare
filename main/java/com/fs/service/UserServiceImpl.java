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
	public UserVO login(LoginDTO loginDTO) throws Exception {
		
		return userDAO.login(loginDTO);
	}
	
	@Override
	public void keepLogin(String uid, String sessionKey) throws Exception {
		
		userDAO.keepLogin(uid, sessionKey);
	}
	
	@Override
	public UserVO getUserWithSessionkey(String sessionKey) throws Exception {

		return userDAO.getUserWithSessionkey(sessionKey);
	}

	@Override
	public void insertUser(UserVO userVO) throws Exception {
	
		userDAO.insertUser(userVO);	
	}

	@Override
	public UserVO checkId(String uid) throws Exception {
		 
		return userDAO.checkId(uid);
	}
	
	@Override
	public void usermodify(UserVO userVO) throws Exception {
		userDAO.Usermodify(userVO);
	}


	@Override
	public void delete(UserVO userVO) throws Exception {
		userDAO.delete(userVO);
	}

	@Override
	public UserVO getUserObj(String uid) throws Exception {
		
		return userDAO.getUserObj(uid);
	}
}
