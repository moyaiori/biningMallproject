package kr.or.kosta.shopping.member.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.article.service.ArticleService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.service.MemberService;
import kr.or.kosta.shopping.product.domain.Product;
import kr.or.kosta.shopping.product.service.ProductService;

/**
 * 로그인에 대한 세부컨트롤러
 * @author AS
 */
public class MemberLoginErrorViewController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : MemberLoginErrorViewController");
		ModelAndView mav = new ModelAndView();
		
		ArticleService service =ArticleService.getInstance();
		List<Article> noticeList =  service.getIndexArticle(1);
		List<Article> qnaList =  service.getIndexArticle(2);
		
		ProductService productService = ProductService.getInstance();
		List<Product> expensive = productService.expensive();
		
		List<Product> best = productService.best();
		
		
		mav.addObject("result", false);
		mav.addObject("best", best);
		mav.addObject("expensive", expensive);
		mav.addObject("noticeList", noticeList);
		mav.addObject("qnaList", qnaList);
		mav.addObject("contentFile", "/index.jsp");
		return mav;
	}
}