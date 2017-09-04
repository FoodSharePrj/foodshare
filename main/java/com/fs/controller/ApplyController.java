package com.fs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fs.domain.ApplyVO;
import com.fs.service.ApplyService;

@Controller
@RequestMapping("/apply")
public class ApplyController {

	@Inject
	ApplyService service;
	
	@ResponseBody
	@RequestMapping(value="/getApplyList/{bid}", method=RequestMethod.GET)
	public List<ApplyVO> getApplyList(@PathVariable("bid") String bid) throws Exception {
		
		return service.getApplyList(bid);
	}
	
	
	@RequestMapping(value="/insertApplyVO", method=RequestMethod.POST)
	public @ResponseBody ApplyVO insertApplyVO(@RequestBody ApplyVO applyVO) throws Exception {
		applyVO.setAid(service.getrowid());
		return service.insertApplyObj(applyVO);
	}
}
