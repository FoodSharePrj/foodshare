package com.fs.persistence;

import java.util.List;

import com.fs.domain.BoardVO;
import com.fs.domain.ListObjVO;
import com.fs.dto.SearchCriteria;

public interface BoardDAO {
	public void regist(BoardVO vo)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public String getrowid()throws Exception;
	public void setrowid(String rowid) throws Exception;
	public List<ListObjVO> getList(SearchCriteria cri) throws Exception;
	public BoardVO getBoardVO(String bid) throws Exception;
	public void increaseApplyCnt(String bid) throws Exception;
	public void decreaseApplyCnt(String bid) throws Exception;
	public void modifyBoard(BoardVO boardVO) throws Exception;
	public void deleteBoard(String bid) throws Exception;
	public void setProgress(BoardVO vo) throws Exception;
}


