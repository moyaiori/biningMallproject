package kr.or.kosta.shopping.member.controller.mypage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.service.MemberService;

/**
 * 마이 페이지 정보
 * @author 이광용
 */
public class MemberOrderViewController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberOrderViewController");

		MemberService service = MemberService.getInstance();
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("contentFile", "/user/myOrder.jsp");
		
		return mav;
	}
}