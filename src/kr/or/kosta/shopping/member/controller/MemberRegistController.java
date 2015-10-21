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
public class MemberRegistController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		
		Member member = new Member(id, passwd, birth, gender, phone, phone2, phone3, address, address2, name, email, "일반", 0);
		
		MemberService service = MemberService.getInstance();
		service.insert(member);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("member", member);
		mav.setView("registResult.jsp"); // forward
		
		return mav;
	}
}