/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.notice.controller;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;

public class NoticeModifyProcController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		ArticleService service =ArticleService.getInstance();
		HashMap<String, Object> data = new HashMap<String, Object>();

		
		String memberId = request.getParameter("memberId");
		int articleId =Integer.valueOf(request.getParameter("articleId"));
		String content = request.getParameter("content");
		String title = request.getParameter("subject");
		Article article = new Article(1,articleId,memberId,title,content);
		
		service.modify(article);
	
		
		mav.addObject("article", service.get(articleId));
		mav.addObject("contentFile", "/notice/notice_read.jsp");
		return mav;
	}

}
