package com.fs.service;

import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fs.domain.BoardVO;
import com.fs.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

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
	
	@Transactional
	@Override
	public String getrowid() throws Exception {
		String rowid = "";
		rowid = dao.getrowid();
		// String값을 Long형인 16진수로 변환
		Long Hex = Long.parseLong(rowid, 16);
		// 값을 1 증가
		Hex++;
		String Hextot = String.format("%06x", Hex);

		dao.setrowid(Hextot);
		return rowid;
	}
}
