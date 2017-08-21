package com.fs.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	SqlSession session;
	
	private static String namespace = "com.fs.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO loginDTO) {
	
		return session.selectOne(namespace+".login", loginDTO);
	}

	@Override
	public void keepLogin(String uid, String sessionKey) {
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("uid", uid);
		paramMap.put("sessionKey", sessionKey);
		
		session.update(namespace+".keepLogin", paramMap);
	}
	
	@Override
	public UserVO getUserWithSessionkey(String sessionKey) {
		
		return session.selectOne(namespace+".getUserWithSessionkey", sessionKey);
	}

}
