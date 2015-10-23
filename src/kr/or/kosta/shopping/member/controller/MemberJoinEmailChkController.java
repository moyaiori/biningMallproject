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
public class MemberJoinEmailChkController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		System.out.println("dddddddd들어와??");
		String joinEmail = request.getParameter("joinEmail");
		MemberService service = MemberService.getInstance();
		
		System.out.println("dddddddd들어와??000");
		response.setContentType("text/plain");
		System.out.println("joinEmail-- "+joinEmail +", "+joinEmail.length());
		
		try {
			PrintWriter out = response.getWriter();
			Member member =null;
			 member=service.emailChk(joinEmail);
			 
			if(member==null){
				System.out.println("이메일 사용 가능 ");
				out.println("true");/*그럼 아이디를 사용할수잇어요*/
			}else{
				System.out.println("이메일 사용 불가 ");
				out.println("false");
			}
		} catch (IOException e) {
			throw new ServletException(e);
		}
		return null;
	}
}