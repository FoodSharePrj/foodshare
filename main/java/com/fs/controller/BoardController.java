package com.fs.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fs.domain.ApplyVO;
import com.fs.domain.BoardVO;
import com.fs.domain.ListObjVO;
import com.fs.domain.UploadVO;
import com.fs.dto.SearchCriteria;
import com.fs.service.BoardService;
import com.fs.service.UploadService;
import com.fs.util.MediaUtils;
import com.fs.util.UploadFileUtils;

@Controller
@RequestMapping("/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Inject
	private BoardService service;

	@Inject
	private UploadService uploadService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public void regist(BoardVO board, Model model) throws Exception {
		logger.info("register get.........");
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public String registerPOST(BoardVO board, MultipartHttpServletRequest mhsr, RedirectAttributes rttr)
			throws Exception {
		logger.info("register post.........");
		logger.info(board.toString());

		List<MultipartFile> files = mhsr.getFiles("file");

		try {
			// 가져온 튜플ID를 VO객체에 삽입
			board.setBid(service.getrowid());

			// 글 등록
			service.regist(board);

			UploadVO uploadVO = null;
			// 첨부했을 경우, 안한경우 files.size()==1 임
			if (files.size() > 1) {
				
				for (int i = 0; i < files.size(); i++) {

					MultipartFile file = files.get(i);
					String originalFileName = file.getOriginalFilename();
					String formatName = originalFileName.substring(originalFileName.lastIndexOf('.') + 1);

					// 이미지 파일인 경우만
					MediaType mType = MediaUtils.getMediaType(formatName);
					if (mType != null) {

						String route = null;
						// 서버에 저장 그리고 저장 경로 반환
						route = UploadFileUtils.uploadFile(uploadPath, originalFileName, file.getBytes());

						// DB에 업로드 이미지 정보 기록
						if (route != null) {
							uploadVO = new UploadVO();
							uploadVO.setFid(uploadService.getRowid());
							uploadVO.setBid(board.getBid());
							uploadVO.setRoute(route);
							if (i == 0) {
								uploadVO.setIsmain("y");
							}
							uploadService.insertFile(uploadVO);
						}
					}
				}

			}
			rttr.addFlashAttribute("msg", "success");
			return "redirect:/board/list";
		} catch (Exception e) {
			e.printStackTrace();
			// 글쓰기 실패시 글쓰기화면으로 이동
			rttr.addFlashAttribute("result", "fail");
			return "redirect:/board/regist";
		}
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list() throws Exception {
		return "/board/list";
	}

	@ResponseBody
	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public List<ListObjVO> getListObj(@RequestBody SearchCriteria cri) throws Exception {
		
		return service.getList(cri);
	}
		
	/*@ResponseBody
	@RequestMapping(value = "/getList/{i}", method = RequestMethod.GET)
	public List<ListObjVO> getListObj(@PathVariable("i") Integer i) throws Exception {
		return service.getList(i);
	}*/

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("bid") String bid, Model model) throws Exception {

		BoardVO boardVO = service.getBoardVO(bid);
		model.addAttribute(boardVO);

		return "/board/detail";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGET(@RequestParam("bid") String bid, Model model) throws Exception {

		BoardVO boardVO = service.getBoardVO(bid);
		model.addAttribute(boardVO);

		return "/board/modify";
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVO board, MultipartHttpServletRequest mhsr)
			throws Exception {

		List<MultipartFile> files = mhsr.getFiles("file");

		try {

			// 글 수정
			service.modifyBoard(board);

			if (files.size() > 1) {
				MultipartFile file = null;
				UploadVO uploadVO = null;
				
				for (int i = 0; i < files.size(); i++) {
					
					file = files.get(i);
					String originalFileName = file.getOriginalFilename();
					String formatName = originalFileName.substring(originalFileName.lastIndexOf('.') + 1);

					// 이미지 파일인 경우만
					MediaType mType = MediaUtils.getMediaType(formatName);
					if (mType != null) {

						String route = null;
						// 서버에 저장 그리고 저장 경로 반환
						route = UploadFileUtils.uploadFile(uploadPath, originalFileName, file.getBytes());

						// DB에 업로드 이미지 정보 기록
						if (route != null) {
							uploadVO = new UploadVO();
							uploadVO.setFid(uploadService.getRowid());
							uploadVO.setBid(board.getBid());
							uploadVO.setRoute(route);
							uploadService.insertFile(uploadVO);
						}
					}
				}
			}
			
			List<UploadVO> uploadList = null;
			uploadList = uploadService.getUploadList(board.getBid());
			if((uploadList.size()!=0) || (uploadList!=null)) {
				uploadService.isMainConfirm(board.getBid(), uploadList.get(0).getFid());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/board/detail?bid="+board.getBid();
	}

	@RequestMapping(value = "/deleteBoard", method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<String> delete(@RequestParam(value="bid") String bid) throws Exception {
		ResponseEntity<String> entity = null;
		
		try {
			service.deleteBoard(bid);
			entity = new ResponseEntity<String>("success",HttpStatus.OK);
			return entity;
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
			return entity;
		}
	}
}
