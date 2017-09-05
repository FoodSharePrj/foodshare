package com.fs.service;

import java.util.List;

import com.fs.domain.UploadVO;

public interface UploadService {

	public String getRowid() throws Exception;
	
	public void insertFile(UploadVO uploadVO) throws Exception;
	
	public List<UploadVO> getUploadList(String bid) throws Exception;
	
	public void deleteFile(String route) throws Exception;
	
	public void isMainConfirm(String bid, String fid) throws Exception;
}
