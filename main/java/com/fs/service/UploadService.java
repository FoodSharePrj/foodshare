package com.fs.service;

import java.util.List;

import com.fs.domain.UploadVO;

public interface UploadService {

	public String getRowid() throws Exception;
	
	public void insertFile(UploadVO uploadVO) throws Exception;
	
	public List<UploadVO> getUploadList(String bid) throws Exception;
}
