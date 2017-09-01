package com.fs.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.domain.UploadVO;

@Repository
public class UploadDAOImpl implements UploadDAO{
	
	@Inject
	SqlSession session;
	
	private static String namespace = "com.fs.mapper.UploadMapper";
	
	@Override
	public String getrowid() throws Exception {
		return session.selectOne(namespace+".getrowid");
	}

	@Override
	public void setrowid(String rowid) throws Exception {
		session.update(namespace+".setrowid", rowid);
	}

	@Override
	public void insertFile(UploadVO uploadVO) throws Exception {
		session.insert(namespace+".insertFile", uploadVO);
	}

	@Override
	public List<UploadVO> getUploadList(String bid) throws Exception {

		return session.selectList(namespace+".getUploadList", bid);
	}
}
