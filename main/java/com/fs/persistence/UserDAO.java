package com.fs.persistence;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO loginDTO);
	
	public void keepLogin(String uid, String sessionKey);
	
	public UserVO getUserWithSessionkey(String sessionKey);
}
