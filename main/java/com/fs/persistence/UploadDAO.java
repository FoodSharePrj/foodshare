package com.fs.persistence;

import com.fs.domain.UploadVO;

public interface UploadDAO {

	public String getrowid() throws Exception;

	public void setrowid(String rowid) throws Exception;
	
	public void insertFile(UploadVO uploadVO) throws Exception;
	
}
