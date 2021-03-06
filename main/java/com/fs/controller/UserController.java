package com.fs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.fs.domain.ApplyStateVO;
import com.fs.domain.BoardVO;
import com.fs.domain.UserVO;
import com.fs.dto.LoginDTO;
import com.fs.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	UserService userService;

	// 회원가입 화면 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinGET() throws Exception {
		return "/user/join";
	}

	// 회원가입 처리
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(UserVO userVO, HttpServletRequest request, HttpServletResponse response, Model model,
			RedirectAttributes rttr) throws Exception {

		try {
			// 가입 성공시 로그인화면으로 이동
			userService.insertUser(userVO);
			rttr.addFlashAttribute("result", "success");
			return "redirect:/user/login";
		} catch (Exception e) {
			e.printStackTrace();
			// 가입 실패시 회원가입화면으로 이동
			rttr.addFlashAttribute("result", "fail");
			return "redirect:/user/join";
		}
	}

	// 로그인 화면 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET() throws Exception {
		return "/user/login";
	}

	// 로그인 처리
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO loginDTO, HttpSession session, Model model) throws Exception {

		UserVO userVO = userService.login(loginDTO);

		if (userVO == null) {
			return;
		}

		model.addAttribute("userVO", userVO);
		// '로그인상태유지' 눌렀을 경우
		if (loginDTO.isUseCookie()) {
			userService.keepLogin(userVO.getUid(), session.getId());
		}
	}

	// 로그아웃 처리
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		Object obj = session.getAttribute("login");
		if (obj != null) {
			// 세션에 기록된 UserVO객체 삭제
			session.removeAttribute("login");
			session.invalidate();

			// 기록된 쿠키 삭제
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if (loginCookie != null) {
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);

				// DB에 저장된 내용 업댓
				UserVO vo = (UserVO) obj;
				userService.keepLogin(vo.getUid(), session.getId());
			}
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/checkId/{uid}", method = RequestMethod.GET)
	public @ResponseBody String checkId(@PathVariable String uid) {
		String result = "";
		try {
			UserVO userVO = userService.checkId(uid);
			if (userVO == null) {
				result = "success";
			} else {
				result = "fail";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// 신청현황
	@RequestMapping(value = "/mypage_applyState", method = RequestMethod.GET)
	public void applystateGET() throws Exception {

	}

	// 공유현황
	@RequestMapping(value = "/mypage_shareState", method = RequestMethod.GET)
	public void sharestateGET() throws Exception {

	}

	@RequestMapping(value = "/getApplyStateList/{uid}", method = RequestMethod.GET)
	public @ResponseBody List<ApplyStateVO> getApplyStateGET(@PathVariable("uid") String uid) throws Exception {
		return userService.getApplyStateList(uid);
	}

	@RequestMapping(value = "/getShareStateList/{uid}", method = RequestMethod.GET)
	public @ResponseBody List<BoardVO> getShareStateGET(@PathVariable("uid") String uid) throws Exception {
		return userService.getShareStateList(uid);
	}

	@RequestMapping(value = "/applySuccessClick/{bid}", method = RequestMethod.POST)
	public ResponseEntity<String> applySuccessClick(@PathVariable("bid") String bid) throws Exception {

		ResponseEntity<String> entity = null;
		BoardVO vo = new BoardVO();
		vo.setBid(bid);
		vo.setProgress("거래완료");
		try {
			userService.applySuccessClick(vo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(value = "/mypage_userModify", method = RequestMethod.GET)
	public void usermodifyGET() throws Exception {

	}

	@RequestMapping(value = "/usermodify", method = RequestMethod.POST)
	public String usermodifyPOST(UserVO userVO, RedirectAttributes rttr, HttpSession session) throws Exception {

		userService.usermodify(userVO);
		// 세션에 기록된 UserVO객체 삭제
		session.removeAttribute("login");
		session.setAttribute("login", userService.getUserObj(userVO.getUid()));
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/user/mypage";
	}

	@RequestMapping(value = "/mypage_userDelete", method = RequestMethod.GET)
	public void userdelteGET() throws Exception {

	}

	@RequestMapping(value = "/userdelete", method = RequestMethod.POST)
	public String userdeltePOST(UserVO userVO, RedirectAttributes rttr, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {

		userService.delete(userVO);

		Object obj = session.getAttribute("login");
		if (obj != null) {
			// 세션에 기록된 UserVO객체 삭제
			session.removeAttribute("login");
			session.invalidate();

			// 기록된 쿠키 삭제
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if (loginCookie != null) {
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
			}
		}

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/";
	}
}
