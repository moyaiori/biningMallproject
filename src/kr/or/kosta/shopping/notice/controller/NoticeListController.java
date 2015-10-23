/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.notice.controller;


import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.common.web.page.Pagination;
public class NoticeListController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		ArticleService service =ArticleService.getInstance();
		//리스트의 사이즈 알아보기
		String rp = request.getParameter("page");
		String searchValue= request.getParameter("searchValue");
		String pageValue = "";
		String pageType = "";
		if(rp == null){
			rp = "1";
		}
		int pageNum = 1;
		if(rp != null){
			 pageNum = Integer.parseInt(rp);
		}
		List<Article> articleList =null;
		int listSize =0;
		int requestP =0;

		if(searchValue!=null){/*검색 할경우*/
			System.out.println("요기 ");

			HashMap<String, Object> type = new HashMap<String, Object>();
			type.put("searchType", request.getParameter("searchType"));
			type.put("searchValue", "'%"+request.getParameter("searchValue")+"%'");
			type.put("searchPage", pageNum);
			listSize = service.getAllSearchCnt(type);
			articleList =service.getAllSearch(type);
			pageValue = request.getParameter("searchValue");
			pageType =request.getParameter("searchType");
		}else{/*검색이 아닐경우 일반 페이지 처리.*/
	
			articleList=service.getAll(pageNum);
			listSize=service.getAllCnt();
		}
		requestP = Integer.parseInt(rp);
		
		Pagination pagination = new Pagination(10, 5, listSize, pageNum);
		pagination.paginate();
		String pageNation =pagination.toHtml(pageType, pageValue);
		mav.addObject("articleList", articleList);
		mav.addObject("listSize", listSize);
		mav.addObject("requestP", requestP);
		mav.addObject("pageNation", pageNation);
		
		// 나중에 DB에서 게시글 가져옴
		mav.addObject("contentFile", "../notice/notice_list.jsp");
		return mav;
	}
}
