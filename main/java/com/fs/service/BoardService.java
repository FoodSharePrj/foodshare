package com.fs.service;

import java.util.List;

import com.fs.domain.BoardVO;

public interface BoardService {
	public void regist(BoardVO vo)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public String getrowid() throws Exception;
	public void setrowid(String rowid) throws Exception;
}
