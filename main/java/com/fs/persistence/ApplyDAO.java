package com.fs.persistence;

import java.util.List;

import com.fs.domain.ApplyVO;

public interface ApplyDAO {

	public String getrowid()throws Exception;
	public void setrowid(String rowid) throws Exception;
	public List<ApplyVO> getApplyList(String bid) throws Exception;
	public void insertApplyObj(ApplyVO applyVO) throws Exception;
	public ApplyVO getApplyObj(String aid) throws Exception;
	public void modifyApply(ApplyVO vo) throws Exception;
	public void deleteApply(String aid) throws Exception;
	public void deleteAllApply(String bid) throws Exception;
}
