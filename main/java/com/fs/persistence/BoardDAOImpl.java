package com.fs.persistence;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.fs.domain.BoardVO;
import com.fs.domain.ListObjVO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	@Inject
	private SqlSession session;
	private static String namespace = "com.fs.mapper.BoardMapper";
	
	@Override
	public void regist(BoardVO vo) throws Exception {
		session.insert(namespace+".regist", vo);
	}
	
	@Override
	public List<BoardVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public String getrowid() throws Exception {
		return session.selectOne(namespace+".getrowid");
	}

	@Override
	public void setrowid(String rowid) throws Exception {
		session.update(namespace+".setrowid", rowid);
	}

	@Override
	public List<ListObjVO> getList(int i) throws Exception {
		return session.selectList(namespace+".getList", i);
	}

	@Override
	public BoardVO getBoardVO(String bid) throws Exception {
		
		return session.selectOne(namespace+".getBoardVO", bid);
	}

	@Override
	public void increaseApplyCnt(String bid) throws Exception {
		session.update(namespace+".increaseApplyCnt", bid);
	}
	
	@Override
	public void decreaseApplyCnt(String bid) throws Exception {
		session.update(namespace+".decreaseApplyCnt", bid);
	}

	@Override
	public void modifyBoard(BoardVO boardVO) throws Exception {
		session.update(namespace+".modifyBoard", boardVO);
		
	}

	@Override
	public void deleteBoard(String bid) throws Exception {
		session.delete(namespace+".deleteBoard", bid);
	}

	@Override
	public void setProgress(BoardVO vo) throws Exception {
		session.update(namespace+".setProgress", vo);
	}
}
