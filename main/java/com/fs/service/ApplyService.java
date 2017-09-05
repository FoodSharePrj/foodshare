package com.fs.service;

import java.util.List;

import com.fs.domain.ApplyVO;

public interface ApplyService {
	
	public String getrowid() throws Exception;
	public List<ApplyVO> getApplyList(String bid) throws Exception;
	public ApplyVO insertApplyObj(ApplyVO applyVO) throws Exception;
	public void modifyApply(ApplyVO vo) throws Exception;
	public void deleteApply(String aid, String bid) throws Exception;
}
