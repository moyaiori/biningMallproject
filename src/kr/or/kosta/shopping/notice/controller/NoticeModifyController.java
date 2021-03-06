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

public class NoticeModifyController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		ArticleService service =ArticleService.getInstance();
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		String articleId = request.getParameter("no");
		Article article  =service.get(Integer.parseInt(articleId));

/*		service.modify(data);*/
		mav.addObject("article", article);
		mav.addObject("contentFile", "/notice/notice_modify.jsp");

		return mav;
	}

}
