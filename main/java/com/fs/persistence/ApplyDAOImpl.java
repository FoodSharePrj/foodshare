package com.fs.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.domain.ApplyVO;

@Repository
public class ApplyDAOImpl implements ApplyDAO {

	@Inject
	SqlSession session;
	
	private static String namespace = "com.fs.mapper.ApplyMapper";
	
	@Override
	public String getrowid() throws Exception {
		return session.selectOne(namespace+".getrowid");
	}

	@Override
	public void setrowid(String rowid) throws Exception {

		session.update(namespace+".setrowid", rowid);
	}

	@Override
	public int getApplyCnt(String bid) throws Exception {
		
		return session.selectOne(namespace+".getApplyCnt", bid);
	}

	@Override
	public List<ApplyVO> getApplyList(String bid) throws Exception {
		
		return session.selectList(namespace+".getApplyList", bid);
	}

	@Override
	public void insertApplyObj(ApplyVO applyVO) throws Exception {
		session.insert(namespace+".insertApplyObj", applyVO);
		
	}

	@Override
	public ApplyVO getApplyObj(String aid) throws Exception {

		return session.selectOne(namespace+".getApplyObj", aid);
	}

	@Override
	public void modifyApply(ApplyVO vo) throws Exception {
		session.update(namespace+".modifyApply", vo);
	}

	@Override
	public void deleteApply(String aid) throws Exception {
		session.delete(namespace+".deleteApply", aid);		
	}

}
