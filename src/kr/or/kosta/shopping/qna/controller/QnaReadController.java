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

public class QnaReadController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		Article article;
		System.out.println("QnaReadController 진입");
		String articleId = request.getParameter("articleId");
		System.out.println("QnaReadController articleId : "+articleId);
		QnaService service = QnaService.getInstance();
		//Qna qna = service.get(Integer.parseInt(articleId));
		//ArticleService service = ArticleService.getInstance();
		article = (Article)service.get(Integer.parseInt(articleId));
		//Article article = service.get(Integer.parseInt(articleId));
		//service.add(article);
		mav.addObject("qna", article);
		//mav.addObject("qna", qna);
		mav.addObject("contentFile", "/qna/qna_read.jsp");

		return mav;
	}

}
