package com.fs.service;

import com.fs.domain.UploadVO;

public interface UploadService {

	public String getRowid() throws Exception;
	
	public void insertFile(UploadVO uploadVO) throws Exception;
}
