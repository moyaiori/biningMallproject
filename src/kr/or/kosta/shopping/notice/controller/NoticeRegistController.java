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

public class NoticeRegistController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		String  name	= request.getParameter("name");
		String passwd= request.getParameter("passwd");
			
		Article article = new Article();
		
		ArticleService service =ArticleService.getInstance();
	//	service.add(article);
		
	//	mav.addObject("user", user);
	//	mav.setView("/user/registResult.jsp");
		return mav;
	}

}
