/*
 * 작성자 : 가승호
 * 작성 최종 수정일 : 2015-10-22: 16시 (가승호)
 * */
package kr.or.kosta.shopping.qna.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.qna.domain.Qna;
import kr.or.kosta.shopping.qna.service.QnaService;

public class QnaModifyViewController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		Article article;
		String articleId = request.getParameter("articleId");
		QnaService service = QnaService.getInstance();
		article = (Article)service.get(Integer.parseInt(articleId));
		service.updateHitcount(Integer.parseInt(articleId));
		
		mav.addObject("qna", article);
		mav.addObject("contentFile", "/qna/qna_modify.jsp");

		return mav;
	}

}
