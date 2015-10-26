package kr.or.kosta.shopping.member.controller;

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
 * 로그인에 대한 세부컨트롤러
 * @author AS
 */
public class MemberLoginController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberLoginController");
		
		String memberId = request.getParameter("memberId");
		String passwd = request.getParameter("passwd");
		MemberService service = MemberService.getInstance();
		ModelAndView mav = new ModelAndView();
		Member member = service.login(memberId, passwd);
		
		Cookie cookie = null;
		if(member != null){
			cookie = new Cookie("loginId", memberId);
			cookie.setPath("/");
			response.addCookie(cookie);
			
			mav.setView("redirect:/index.bins");
			mav.addObject("message", "로그인 성공");
			return mav;
		}else{
			mav.setView("redirect:../user/loginError.bins");
			mav.addObject("message", "로그인 실패");
			return mav;
		}
	}
}