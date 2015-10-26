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

public class NoticeDeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		ArticleService service =ArticleService.getInstance();
		HashMap<String, Object> data = new HashMap<String, Object>();
		
		String articleId = request.getParameter("no");
		service.delete(articleId);

		List<Article> articleList=service.getAll(1);
		int listSize=service.getAllCnt(); //검색된 전체 수.
		String pageValue = "";
		String pageType = "";
		int pageNum = 1;
		Pagination pagination = new Pagination(10, 5, listSize, pageNum);
		pagination.paginate();
		String pageNation =pagination.toHtml(pageType, pageValue);
		mav.addObject("articleList", articleList);
		mav.addObject("listSize", listSize);
		mav.addObject("requestP", 1);
		mav.addObject("pageNation", pageNation);
		
		// 나중에 DB에서 게시글 가져옴
		mav.addObject("contentFile", "../notice/notice_list.jsp");
		
		
		
		mav.addObject("contentFile", "../notice/notice_list.jsp");

		
		return mav;
	}

}
