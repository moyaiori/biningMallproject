/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.product.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;

public class ProductController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();

		ArticleService service =ArticleService.getInstance();
	//	service.add(article);
		System.out.println("요기까지와??");
		mav.addObject("contentFile", "/product/product_list_berger.jsp");

		return mav;
	}

}
