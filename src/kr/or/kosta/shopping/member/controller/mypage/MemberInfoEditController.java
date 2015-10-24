package kr.or.kosta.shopping.member.controller.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.member.service.MemberService;

/**
 * 마이 페이지 정보
 * @author 이광용
 */
public class MemberInfoEditController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberInfoEditViewController");

		MemberService service = MemberService.getInstance();
		ModelAndView mav = new ModelAndView();
		
		Member member = new Member();
		
		member.setName(request.getParameter("name"));
		member.setEmail(request.getParameter("email"));
		member.setPhoneNumber(request.getParameter("phone") + request.getParameter("phone2") + request.getParameter("phone3"));
		member.setAddress(request.getParameter("address"));
		member.setAddress2(request.getParameter("address2"));
		
		
		System.out.println("MemberInfoEditViewController");
		mav.addObject("contentFile", "/user/myEditInfo.jsp");
		
		return mav;
	}
}