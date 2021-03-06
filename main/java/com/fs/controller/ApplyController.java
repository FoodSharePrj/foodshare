package com.fs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fs.domain.ApplyVO;
import com.fs.domain.BoardVO;
import com.fs.domain.ChatroomVO;
import com.fs.service.ApplyService;

@RestController
@RequestMapping("/apply")
public class ApplyController {

	@Inject
	ApplyService service;
	
	@RequestMapping(value="/getApplyList/{bid}", method=RequestMethod.GET)
	public List<ApplyVO> getApplyList(@PathVariable("bid") String bid) throws Exception {
		
		return service.getApplyList(bid);
	}
	
	
	@RequestMapping(value="/insertApplyVO", method=RequestMethod.POST)
	public ApplyVO insertApplyVO(@RequestBody ApplyVO applyVO) throws Exception {
		
		applyVO.setAid(service.getrowid());
		
		return service.insertApplyObj(applyVO);
	}
	
	@RequestMapping(value="/modifyApply/{aid}", method=RequestMethod.POST)
	public ResponseEntity<String> modifyApply(@PathVariable("aid") String aid, @RequestBody ApplyVO vo) throws Exception {
		
		ResponseEntity<String> entity = null;
		try {
			vo.setAid(aid);
			System.out.println(vo);
			service.modifyApply(vo);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/deleteApply/{aid}/{bid}", method=RequestMethod.POST)
	public ResponseEntity<String> deleteApply(@PathVariable("aid") String aid, @PathVariable("bid") String bid) throws Exception{
		ResponseEntity<String> entity = null;
		try {
			service.deleteApply(aid, bid);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/applySelectClick", method=RequestMethod.POST)
	public ResponseEntity<String> applySelectClick(@RequestParam("writer") String writer, @RequestBody ApplyVO vo) throws Exception{
		
		ResponseEntity<String> entity = null;
		
		ChatroomVO cvo = new ChatroomVO();
		cvo.setRoomname(vo.getAid());
		cvo.setBid(vo.getBid());
		cvo.setProgress("선택완료");
		cvo.setPlayer1(writer);
		cvo.setPlayer2(vo.getApplicant());
		
		BoardVO bvo = new BoardVO();
		bvo.setBid(vo.getBid());
		bvo.setProgress("선택완료");
		
		try {
			service.applySelectClick(vo, cvo, bvo);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/applyCancelClick", method=RequestMethod.POST)
	public ResponseEntity<String> applyCancelClick(@RequestBody ApplyVO vo) throws Exception{
		
		ResponseEntity<String> entity = null;
		String roomname = vo.getAid();
		BoardVO bvo = new BoardVO();
		bvo.setBid(vo.getBid());
		bvo.setProgress("공유중");
		try {
			service.applyCancelClick(vo, roomname, bvo);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
