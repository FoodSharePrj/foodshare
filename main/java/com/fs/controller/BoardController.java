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

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public void regist(BoardVO board, Model model) throws Exception {
		logger.info("register get.........");
	}

	@RequestMapping(value="/regist", method = RequestMethod.POST)
	public String registerPOST(BoardVO board, RedirectAttributes rttr) throws Exception{
		logger.info("register post.........");
		logger.info(board.toString());
		
		try {
	         // 가져온 튜플ID를 VO객체에 삽입
	         board.setBid(service.getrowid());
	         
	         // 글 등록
	         service.regist(board);
	         rttr.addFlashAttribute("msg", "success");
	         return "redirect:/board/list";
	      }catch(Exception e) {
	         e.printStackTrace();
	         // 글쓰기 실패시 글쓰기화면으로 이동
	         rttr.addFlashAttribute("result", "fail");
	         return "redirect:/board/regist";
	      }
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		logger.info("show all list.........");
		model.addAttribute("list", service.listAll());
		return "/board/list";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail() {
		return "/board/detail";
	}
}
