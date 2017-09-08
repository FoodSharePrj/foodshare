package com.fs.service;

import java.util.List;
import java.util.Map;

import com.fs.domain.ChatroomVO;

public interface ChatService {

	public List<ChatroomVO> getChatroomList(String uid) throws Exception;
	public int getIsreadCnt(Map<String, Object> map) throws Exception;
}
