package com.fs.persistence;

import java.util.List;

import com.fs.domain.ChatroomVO;

public interface ChatDAO {

	public void insertChatroom(ChatroomVO vo) throws Exception;
	public void deleteChatroom(String roomname) throws Exception;
	
	public List<ChatroomVO> getChatroomList(String uid) throws Exception;
}
