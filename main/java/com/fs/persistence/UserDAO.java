package com.fs.persistence;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO loginDTO) throws Exception;
	
	public void keepLogin(String uid, String sessionKey) throws Exception;
	
	public UserVO getUserWithSessionkey(String sessionKey) throws Exception;
	
	public void insertUser(UserVO userVO) throws Exception;
	
	public UserVO checkId(String uid) throws Exception;
	
	public void Usermodify(UserVO userVO) throws Exception;
	
	public UserVO read(UserVO userVO) throws Exception;
	
	public void delete(UserVO userVO) throws Exception;
}
