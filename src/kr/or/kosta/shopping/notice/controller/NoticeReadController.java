/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.notice.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;

public class NoticeReadController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		String articleId = request.getParameter("articleId");
		ModelAndView mav = new ModelAndView();
		ArticleService service =ArticleService.getInstance();
		service.updateHitcount(Integer.parseInt(articleId));
		Article article  =service.get(Integer.parseInt(articleId));
	
		mav.addObject("article", article);
	//	service.add(article);
		mav.addObject("contentFile", "/notice/notice_read.jsp");
		
		return mav;
	}

}
