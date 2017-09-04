package com.fs.persistence;

import java.util.List;

import com.fs.domain.ApplyVO;

public interface ApplyDAO {

	public String getrowid()throws Exception;
	public void setrowid(String rowid) throws Exception;
	public int getApplyCnt(String bid) throws Exception;
	public List<ApplyVO> getApplyList(String bid) throws Exception;
	public void insertApplyObj(ApplyVO applyVO) throws Exception;
	public ApplyVO getApplyObj(String aid) throws Exception;
}
