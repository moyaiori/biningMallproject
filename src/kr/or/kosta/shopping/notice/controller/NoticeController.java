/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.notice.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.artricle.domain.Article;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;

public class NoticeController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		System.out.println("요기까지와??1");
		ModelAndView mav = new ModelAndView();
		System.out.println("요기까지와??2");
		ArticleService service =ArticleService.getInstance();
	//	service.add(article);
		System.out.println("요기까지와??3");
		mav.addObject("contentFile", "/notice/notice.jsp");

		return mav;
	}

}
