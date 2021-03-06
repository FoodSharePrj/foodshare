package com.fs.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fs.domain.BoardVO;
import com.fs.domain.ListObjVO;
import com.fs.dto.SearchCriteria;
import com.fs.persistence.ApplyDAO;
import com.fs.persistence.BoardDAO;
import com.fs.persistence.UploadDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;
	
	@Inject
	private UploadDAO uploadDAO;
	
	@Inject
	private ApplyDAO applyDAO;

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

	@Override
	public List<ListObjVO> getList(SearchCriteria cri) throws Exception {
		cri.setIndex(cri.getIndex()*12);
		return dao.getList(cri);
	}

	@Override
	public BoardVO getBoardVO(String bid) throws Exception {

		return dao.getBoardVO(bid);
	}

	@Override
	public void modifyBoard(BoardVO boardVO) throws Exception {
		dao.modifyBoard(boardVO);		
	}

	@Transactional
	@Override
	public void deleteBoard(String bid) throws Exception {
		dao.deleteBoard(bid);
		applyDAO.deleteAllApply(bid);
		uploadDAO.deleteAllFile(bid);
	}
}
