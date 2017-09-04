package com.fs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fs.domain.ApplyVO;
import com.fs.persistence.ApplyDAO;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Inject
	private ApplyDAO dao;
	
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
	public int getApplyCnt(String bid) throws Exception {

		return dao.getApplyCnt(bid);
	}

	@Override
	public List<ApplyVO> getApplyList(String bid) throws Exception {

		return dao.getApplyList(bid);
	}

	@Transactional
	@Override
	public ApplyVO insertApplyObj(ApplyVO applyVO) throws Exception {
		dao.insertApplyObj(applyVO);
		return dao.getApplyObj(applyVO.getAid());
	}

	
}
