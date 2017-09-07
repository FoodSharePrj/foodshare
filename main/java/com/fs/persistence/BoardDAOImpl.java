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
	public List<ListObjVO> getSearchList(String splace) throws Exception {
		return session.selectList(namespace+".getSearchList", splace);
	}
}
