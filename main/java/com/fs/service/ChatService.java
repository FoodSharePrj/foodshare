package com.fs.service;

import java.util.List;

import com.fs.domain.ChatroomVO;

public interface ChatService {

	public List<ChatroomVO> getChatroomList(String uid) throws Exception;
}
