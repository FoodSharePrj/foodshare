package com.fs.persistence;

import java.util.List;

import com.fs.domain.BoardVO;

public interface BoardDAO {
	public void regist(BoardVO vo)throws Exception;
	public List<BoardVO> listAll()throws Exception;
	public String getrowid()throws Exception;
	public void setrowid(String rowid) throws Exception;
}

