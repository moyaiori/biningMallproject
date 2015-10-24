/*
 * 작성자 : 가승호
 * 작성 최종 수정일 : 2015-10-23:오전 12시 (가승호)
 * */
package kr.or.kosta.shopping.qna.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.qna.domain.Qna;
import kr.or.kosta.shopping.qna.service.QnaService;

public class QnaRegistController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		String memberId = null;
		Cookie[] cookies = request.getCookies();	
		if(cookies != null){//로그인 되었을경우.
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("loginId")){
					try {
						memberId = URLDecoder.decode(cookie.getValue(), "utf-8");
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
				}
			}
		}
		String articleId = request.getParameter("articleId");
		String subject = request.getParameter("subject");
		String content= request.getParameter("content");
		Qna qna = new Qna(2,memberId,subject,content);
		QnaService service = QnaService.getInstance();
		
	
		
		if(memberId.equals("admin")){
			qna.setGroupNum(Integer.parseInt(articleId));
			qna.setOrderNum(1);
			qna.setStepNum(1);
			qna.setMemberId(request.getParameter("memberId"));
			//memberId = request.getParameter("memberId");
			//qna.setMemberId(memberId);
			service.addRe(qna);
		}else{
			service.add(qna);
		}
		mav.setView("/qna/qna_view.bins");
		return mav;
	}

}
