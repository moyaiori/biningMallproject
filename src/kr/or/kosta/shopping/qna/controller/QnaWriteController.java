/*
 * 작성자 : 가승호
 * 작성 최종 수정일 : 2015-10-22 : 오전 12시 (가승호)
 * */
package kr.or.kosta.shopping.qna.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.qna.service.QnaService;

public class QnaWriteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		QnaService service = QnaService.getInstance();
	//	service.add(article);
		mav.addObject("contentFile", "/qna/qna_write.jsp");
 
		return mav;
	}

}
