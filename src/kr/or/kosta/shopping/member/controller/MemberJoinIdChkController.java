package kr.or.kosta.shopping.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
 * 회원 가입 예외 처리 
 * 작성자 조현빈
 * 날짜 2015 10 23 :오후 9시
 */
public class MemberJoinIdChkController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		//Logger logger = Logger.getLogger(Log4JExample.class);
	//	logger.debug("[debug] : MemberLoginController");
		
		String joinId = request.getParameter("joinId");
		MemberService service = MemberService.getInstance();
		response.setContentType("text/plain");
		
		try {
			PrintWriter out = response.getWriter();
			Member member =null;
			 member=service.idChk(joinId);
			if(member==null){
			
				out.println("true");/*그럼 아이디를 사용할수잇어요*/
			}else{
				
				out.println("false");
			}
		} catch (IOException e) {
			throw new ServletException(e);
		}
		return null;
	}
}