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
public class MemberInfoEditViewController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberInfoEditViewController");

		MemberService service = MemberService.getInstance();
		ModelAndView mav = new ModelAndView();
		
		String memberId = null;
		Member member = null;
		
		// 쿠키값 가져오기
	    Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("loginId")){
					cookie.setPath("/");
					memberId = cookie.getValue();
				}
			}
		}
		
		member = service.getMemberInfo(memberId);
		
		String[] phoneNum = member.getPhoneNumber().split("-");
		member.setPhoneNumber2(phoneNum[1]);
		member.setPhoneNumber3(phoneNum[2]);
		member.setPhoneNumber(phoneNum[0]);
		
		System.out.println("member : " + member);
		
		mav.addObject("member",member);
		
		System.out.println("MemberInfoEditViewController");
		mav.addObject("contentFile", "/user/myEditInfo.jsp");
		
		return mav;
	}
}