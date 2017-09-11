package com.fs.service;

import java.util.List;

import com.fs.domain.BoardVO;
import com.fs.domain.ListObjVO;
import com.fs.dto.SearchCriteria;

public interface BoardService {
	public void regist(BoardVO vo)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public String getrowid() throws Exception;
	public List<ListObjVO> getList(SearchCriteria cri) throws Exception;
	public BoardVO getBoardVO(String bid) throws Exception;
	public void modifyBoard(BoardVO boardVO) throws Exception;
	public void deleteBoard(String bid) throws Exception;
}
