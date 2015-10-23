/*
 * 작성자 : 가승호
 * 작성 최종 수정일 : 2015-10-23:오전 12시 (가승호)
 * */
package kr.or.kosta.shopping.qna.controller;


import java.util.HashMap;
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
		String rp = request.getParameter("page");
		String searchValue= request.getParameter("searchValue");
		String pageValue = "";
		String pageType = "";
	
		if(rp == null){
			rp = "1";
		}
		System.out.println("if Next rp : " + rp);
		int pageNum = 1;
		if(rp != null){
			 pageNum = Integer.parseInt(rp);
		}
		List<Article> qnaList = null;
		int listSize = 0;
		int requestP = 0;
		
		if(searchValue!=null){/*검색 할경우*/
			HashMap<String, Object> type = new HashMap<String, Object>();
			type.put("searchType", request.getParameter("searchType"));
			type.put("searchValue", "'%"+request.getParameter("searchValue")+"%'");
			type.put("searchPage", pageNum);
			listSize = service.getAllSearchCnt(type);
			qnaList =service.getAllSearch(type);
			pageValue = request.getParameter("searchValue");
			pageType =request.getParameter("searchType");
		}else{/*검색이 아닐경우 일반 페이지 처리.*/
			qnaList=service.getAll(pageNum);
			listSize=service.getAllCnt();
		}
		requestP = Integer.parseInt(rp);
		
		Pagination pagination = new Pagination(10, 5, listSize, pageNum);
		pagination.paginate();
		String pageNation = pagination.toHtml(pageType, pageValue);
		mav.addObject("articleList", qnaList);
		mav.addObject("listSize", listSize);
		mav.addObject("requestP", requestP);
		mav.addObject("pageNation", pageNation);
		
		mav.addObject("contentFile", "../qna/qna_view.jsp");
		return mav;
	}
}
