package com.fs.service;

import java.util.List;

import com.fs.domain.ApplyVO;

public interface ApplyService {
	
	public String getrowid() throws Exception;
	public int getApplyCnt(String bid) throws Exception;
	public List<ApplyVO> getApplyList(String bid) throws Exception;
	public ApplyVO insertApplyObj(ApplyVO applyVO) throws Exception;
}
