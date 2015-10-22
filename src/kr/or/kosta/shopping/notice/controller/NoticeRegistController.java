/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.notice.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;

public class NoticeRegistController implements Controller {

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
		
		String subject = request.getParameter("subject");
		String content= request.getParameter("content");	
		Article article = new Article(1,memberId,subject,content);

		ArticleService service =ArticleService.getInstance();
		
		service.add(article);
	//	mav.addObject("contentFile", "../notice/notice_list.bins");
		mav.setView("../notice/notice_list.bins");
		return mav;
	}

}
