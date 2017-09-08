package com.fs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.domain.ChatroomVO;
import com.fs.persistence.ChatDAO;

@Service
public class ChatServiceImpl implements ChatService {

	@Inject
	ChatDAO dao;

	@Override
	public List<ChatroomVO> getChatroomList(String uid) throws Exception {

		return dao.getChatroomList(uid);
	}

	@Override
	public int getIsreadCnt(Map<String, Object> map) throws Exception {

		return dao.getIsreadCnt(map);
	}
}
