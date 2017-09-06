package com.fs.persistence;

import java.util.List;

import com.fs.domain.UploadVO;

public interface UploadDAO {

	public String getrowid() throws Exception;

	public void setrowid(String rowid) throws Exception;
	
	public void insertFile(UploadVO uploadVO) throws Exception;
	
	public List<UploadVO> getUploadList(String bid) throws Exception;
	
	public void deleteFile(String route) throws Exception;
	
	public void deleteAllFile(String bid) throws Exception;
	
	public void setAllIsMainNo(String bid) throws Exception;
	
	public void setFirstIsMainYes(String fid) throws Exception;
}
