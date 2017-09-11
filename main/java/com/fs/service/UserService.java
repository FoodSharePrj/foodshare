package com.fs.service;

import java.util.List;

import com.fs.domain.ApplyStateVO;
import com.fs.domain.BoardVO;
import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO loginDTO) throws Exception;

	public void keepLogin(String uid, String sessionKey) throws Exception;

	public UserVO getUserWithSessionkey(String sessionKey) throws Exception;

	public void insertUser(UserVO userVO) throws Exception;

	public UserVO checkId(String uid) throws Exception;

	public void usermodify(UserVO userVO) throws Exception;

	public void delete(UserVO userVO) throws Exception;

	public UserVO getUserObj(String uid) throws Exception;

	public List<ApplyStateVO> getApplyStateList(String uid) throws Exception;

	public List<BoardVO> getShareStateList(String uid) throws Exception;

	public void applySuccessClick(BoardVO boardVO) throws Exception;
}
