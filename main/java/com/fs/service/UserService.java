package com.fs.service;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO loginDTO);
	
	public void keepLogin(String uid, String sessionKey);
	
	public UserVO getUserWithSessionkey(String sessionKey);
}
