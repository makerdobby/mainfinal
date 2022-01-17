package com.lol.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lol.bean.Board;
import com.lol.service.BoardMM;

import lombok.extern.slf4j.Slf4j;

@Controller
public class BoardController { // 게시판 관련 컨트롤러
	
	@Autowired
	private BoardMM bm; // 게시판 서비스 클래스
	
	ModelAndView mav; // 선택
	
	
	@RequestMapping(value = "/loginboardhome") // get, post 모두 가능
	public ModelAndView loginBoardHome(String id,  HttpSession session) { // 필수로 인자를 받을땐 @RequestParam 를 붙인다.
		mav = bm.loginBoardHome(id, session);
		return mav;
	}
	/*
	 * @RequestMapping(value = "/boardlist") // get, post 모두 가능 public ModelAndView
	 * getBoardList(Integer pageNum, HttpServletRequest req, HttpSession session) {
	 * // 필수로 인자를 받을땐 @RequestParam 를 붙인다. mav = bm.getBoardList(pageNum, session);
	 * return mav; }
	 */
	
	/*
	 * @GetMapping(value = "/contents") public ModelAndView getContents(Board
	 * board,Member mb, HttpSession session) { Integer bNum = board.getB_num();
	 * String m_id = mb.getM_id(); bm.viewUpdate(bNum);//조회수 올리는 함수 mav =
	 * bm.getContents(bNum, m_id , session); return mav; }
	 */
	
	/*
	 * @GetMapping(value = "writefrm") public String writeFrm() { return "writeFrm";
	 * // jsp }
	 * 
	 * @PostMapping(value = "/boardwrite") public ModelAndView boardwrite(Board
	 * board, List<MultipartFile> files, HttpSession session) { mav =
	 * bm.boardWrite(board, files, session); //name이 같은 애들로 데려옴 return mav; }
	 * 
	 * @RequestMapping(value = "/download", method = RequestMethod.GET) //
	 * map에선 @RequestParam을 생략하면 비어있는 Map객체를 주입한다. public void
	 * download(@RequestParam Map<String, Object> params, HttpServletRequest req,
	 * HttpServletResponse resp)
	 * 
	 * throws Exception {
	 * 
	 * System.out.println("1=" + params.get("sysFileName")); System.out.println("2="
	 * + params.get("oriFileName")); // 다운로드하기 위한 물리적 주소 params.put("root",
	 * req.getSession().getServletContext().getRealPath("/"));
	 * params.put("response", resp); String path = "/report.jpg";
	 * bm.download(params); req.setAttribute("path", path); }
	 * 
	 */
	
	
	
}
