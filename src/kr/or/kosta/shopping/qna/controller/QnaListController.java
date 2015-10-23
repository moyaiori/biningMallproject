/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.qna.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.common.web.page.Pagination;
import kr.or.kosta.shopping.qna.domain.Qna;
import kr.or.kosta.shopping.qna.service.QnaService;

public class QnaListController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		QnaService service = QnaService.getInstance();
		System.out.println("QnaListController 진입");
		String rp = request.getParameter("page");
		System.out.println("rp : " + rp);
		if(rp == null){
			rp = "1";
		}
		int pageNum = 1;
		if(rp != null){
			 pageNum = Integer.parseInt(rp);
		}
		List<Article> qnaList = null;
		int listSize = 0;
		int requestP = Integer.parseInt(rp);
		
		qnaList = service.getAll(pageNum);
		
		Pagination pagination = new Pagination(10, 5, listSize, pageNum);
		pagination.paginate();
		String pageNation = pagination.toHtml("", "");
		mav.addObject("articleList", qnaList);
		mav.addObject("listSize", listSize);
		mav.addObject("requestP", requestP);
		mav.addObject("pageNation", pageNation);
		
		mav.addObject("contentFile", "../qna/qna_view.jsp");
		return mav;
	}
}
