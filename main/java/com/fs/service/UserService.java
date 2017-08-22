package com.fs.service;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO loginDTO) throws Exception;
	
	public void keepLogin(String uid, String sessionKey) throws Exception;
	
	public UserVO getUserWithSessionkey(String sessionKey) throws Exception;
	
	public void insertUser(UserVO userVO) throws Exception;
}
