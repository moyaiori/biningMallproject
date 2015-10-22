/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.notice.controller;


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
		
		String rp = request.getParameter("page");
		if(rp == null){
			rp = "1";
		}
		int pageNum = 1;
		if(rp != null){
			 pageNum = Integer.parseInt(rp);
		}
		//리스트의 사이즈 알아보기
		List<Article> listNum = service.getAll(1);
		int listSize = listNum.size();
		int requestP = Integer.parseInt(rp);
		Pagination pagination = new Pagination(10, 5, listSize, pageNum);
	
		pagination.paginate();
		mav.addObject("listNum", listNum);
		mav.addObject("listSize", listSize);
		mav.addObject("requestP", requestP);
		mav.addObject("pagination", pagination);
		
		// 나중에 DB에서 게시글 가져옴
		mav.addObject("contentFile", "../notice/notice_list.jsp");
		return mav;
	}
}
