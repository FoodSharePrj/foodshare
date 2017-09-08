package com.fs.persistence;

import java.util.List;
import java.util.Map;

import com.fs.domain.ChatroomVO;

public interface ChatDAO {

	public void insertChatroom(ChatroomVO vo) throws Exception;
	public void deleteChatroom(String roomname) throws Exception;
	
	public List<ChatroomVO> getChatroomList(String uid) throws Exception;
	public int getIsreadCnt(Map<String, Object> map) throws Exception;
}
