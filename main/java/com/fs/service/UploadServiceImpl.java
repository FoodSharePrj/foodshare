package com.fs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fs.domain.UploadVO;
import com.fs.persistence.UploadDAO;

@Service
public class UploadServiceImpl implements UploadService {

	@Inject
	UploadDAO dao;

	@Transactional
	@Override
	public String getRowid() throws Exception {
		String rowid = "";
		rowid = dao.getrowid();
		// String값을 Long형인 16진수로 변환
		Long hex = Long.parseLong(rowid, 16);
		// 값을 1 증가
		hex++;
		String Hextot = String.format("%06x", hex);

		dao.setrowid(Hextot);
		return rowid;
	}

	@Override
	public void insertFile(UploadVO uploadVO) throws Exception {
		
		dao.insertFile(uploadVO);		
	}

	@Override
	public List<UploadVO> getUploadList(String bid) throws Exception {
		
		return dao.getUploadList(bid);
	}
	
	
}
