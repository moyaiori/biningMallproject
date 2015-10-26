package kr.or.kosta.shopping.main.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.product.domain.Product;
import kr.or.kosta.shopping.product.service.ProductService;

/** 
 *   /index 요청시
 * @author Lee Gwangyong
 *
 */
public class IndexController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {
		// 다양한 서비스 객체를 이용한 비즈니스 메소드 호출
		ModelAndView mav = new ModelAndView();
		ArticleService service =ArticleService.getInstance();
		List<Article> noticeList =  service.getIndexArticle(1);
		List<Article> qnaList =  service.getIndexArticle(2);
		
		ProductService productService = ProductService.getInstance();
		List<Product> expensive = productService.expensive();
		
		List<Product> best = productService.best();
		
		mav.addObject("best", best);
		mav.addObject("expensive", expensive);
		mav.addObject("noticeList", noticeList);
		mav.addObject("qnaList", qnaList);
		mav.addObject("contentFile", "/index.jsp");
		return mav;
	}

}
