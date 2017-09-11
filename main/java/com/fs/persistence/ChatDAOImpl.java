package com.fs.persistence;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.domain.BoardVO;
import com.fs.domain.ChatroomVO;

@Repository
public class ChatDAOImpl implements ChatDAO {

	@Inject
	private SqlSession session;
	private static String namespace = "com.fs.mapper.ChatMapper";
	
	@Override
	public void insertChatroom(ChatroomVO vo) throws Exception {
		session.insert(namespace+".insertChatroom", vo);		
	}

	@Override
	public void deleteChatroom(String roomname) throws Exception {
		session.delete(namespace+".deleteChatroom", roomname);		
	}

	@Override
	public List<ChatroomVO> getChatroomList(String uid) throws Exception {
		return session.selectList(namespace+".getChatroomList", uid);
	}

	@Override
	public int getIsreadCnt(Map<String, Object> map) throws Exception {
		
		return session.selectOne(namespace+".getIsreadCnt", map);
	}

	@Override
	public void setProgress(BoardVO vo) throws Exception {
		session.update(namespace+".setProgress", vo);		
	}
}
