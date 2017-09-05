package com.fs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fs.domain.ApplyVO;
import com.fs.persistence.ApplyDAO;
import com.fs.persistence.BoardDAO;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Inject
	private ApplyDAO dao;
	
	@Inject
	private BoardDAO boardDAO;
	
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
	public List<ApplyVO> getApplyList(String bid) throws Exception {

		return dao.getApplyList(bid);
	}

	@Transactional
	@Override
	public ApplyVO insertApplyObj(ApplyVO applyVO) throws Exception {
		dao.insertApplyObj(applyVO);
		boardDAO.increaseApplyCnt(applyVO.getBid());
		return dao.getApplyObj(applyVO.getAid());
	}

	@Override
	public void modifyApply(ApplyVO vo) throws Exception {
		dao.modifyApply(vo);
	}

	@Transactional
	@Override
	public void deleteApply(String aid, String bid) throws Exception {
		dao.deleteApply(aid);
		boardDAO.decreaseApplyCnt(bid);
	}
}
