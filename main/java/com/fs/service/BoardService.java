package com.fs.service;

import java.util.List;

import com.fs.domain.BoardVO;
import com.fs.domain.ListObjVO;

public interface BoardService {
	public void regist(BoardVO vo)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public String getrowid() throws Exception;
	public List<ListObjVO> getList(int i) throws Exception;
	public BoardVO getBoardVO(String bid) throws Exception;
	public void modifyBoard(BoardVO boardVO) throws Exception;
}
