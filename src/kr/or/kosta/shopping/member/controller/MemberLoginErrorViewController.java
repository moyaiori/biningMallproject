package kr.or.kosta.shopping.member.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.service.MemberService;

/**
 * 로그인에 대한 세부컨트롤러
 * @author AS
 */
public class MemberLoginErrorViewController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberLoginErrorViewController");
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("contentFile", "../user/loginResult.jsp");
		return mav;
	}
}