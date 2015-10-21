package kr.or.kosta.shopping.member.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.member.service.MemberService;

/**
 * 회원가입에 대한 세부컨트롤러
 * @author AS
 */
public class MemberUserInfoSearchController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
	
		MemberService service = MemberService.getInstance();
		ModelAndView mav = new ModelAndView();
		mav.addObject("contentFile", "../user/userinforsearch.jsp");
		return mav;
	}
}