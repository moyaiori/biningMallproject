package kr.or.kosta.shopping.member.controller;

import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
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
public class MemberPassSearchController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberIdSearchController");
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		
		MemberService service = MemberService.getInstance();
		
		ModelAndView mav = new ModelAndView();
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("id", id);
		data.put("email", email);
		Member member = service.searchPass(data);
		
		
		if(member != null){
			
			/* SMTP 서버 설정 */
			SimpleEmail simpleEmail = new SimpleEmail();
			simpleEmail.setHostName("smtp.naver.com");
			simpleEmail.setSmtpPort(587);
			simpleEmail.setAuthentication("kahlman", "rlanwlvkdnj1%");
			simpleEmail.setCharset("utf-8");
			
			
			
			try{
				// 이메일 설정
				simpleEmail.setSSLOnConnect(true);
				simpleEmail.setStartTLSEnabled(true);
				
				// 받는 양반
				simpleEmail.addTo(email, member.getName(), "utf-8");
				
				// 보내는 양반
				simpleEmail.setFrom("kahlman@naver.com", "Bins Admin");
				
				// 제목 설정
				simpleEmail.setSubject("비닝몰 비밀번호입니다.");
				
				// 내용
				simpleEmail.setMsg("언제나 사랑해주셔서 감사합니다. 당신의 비밀번호는 " + member.getPasswd() + "입니다.");
				simpleEmail.send();
			}catch(EmailException e){
				e.printStackTrace();
			}
			mav.addObject("searchType", "passwd");
			mav.addObject("result", true);
			mav.addObject("contentFile", "../user/searchResult.jsp");
			return mav;
		}else{
			mav.addObject("searchType", "passwd");
			mav.addObject("result", false);
			mav.addObject("contentFile", "../user/searchResult.jsp");
			return mav;
		}
	}
}