package com.fs.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fs.domain.BoardVO;
import com.fs.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Inject
	private BoardService service;
	
	@RequestMapping(value="/regist", method = RequestMethod.GET)
	public void regist(BoardVO board, Model model)throws Exception{
		logger.info("register get.........");
	}
	
	@RequestMapping(value="/regist", method = RequestMethod.POST)
	public String registerPOST(BoardVO board, RedirectAttributes rttr) throws Exception{
		logger.info("register post.........");
		logger.info(board.toString());
		
		// 가져온 튜플ID를 VO객체에 삽입
		board.setBid(service.getrowid());
		System.out.println(board.getBid());
		// String값을 int형인 16진수로 변환
		int Hex = Integer.valueOf(service.getrowid(),16);
		
		// 값을 1 증가
		Hex++;
		
		// 인트형인 16진수이기 때문에 Interger.toString메소드를 이용하여 String으로 변환
		String Hextot = Integer.toString(Hex);
		
		// 증가된 튜플ID를 시퀀스테이블에 업데이트
		service.setrowid(Hextot);
		
		// 글 등록
		service.regist(board);
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list(Model model)throws Exception{
		logger.info("show all list.........");
		model.addAttribute("list", service.listAll());
		return "/board/list";
	}
	
	@RequestMapping(value="/detail", method = RequestMethod.GET)
	public String detail() {
		return "/board/detail";
	}
}
