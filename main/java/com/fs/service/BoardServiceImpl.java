package com.fs.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.fs.domain.BoardVO;
import com.fs.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO dao;
	
	@Override
	public void regist(BoardVO vo) throws Exception {
		dao.regist(vo);
	}
	
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public String getrowid() throws Exception {
		return dao.getrowid();
	}

	@Override
	public void setrowid(String rowid) throws Exception {
		dao.setrowid(rowid);
	}
}
