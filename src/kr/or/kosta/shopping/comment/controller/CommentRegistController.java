package kr.or.kosta.shopping.comment.controller;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.comment.domain.Comment;
import kr.or.kosta.shopping.comment.service.CommentService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.member.service.MemberService;
import kr.or.kosta.shopping.product.domain.Product;
import kr.or.kosta.shopping.product.service.ProductService;
import kr.or.kosta.shopping.topping.domain.Topping;
import kr.or.kosta.shopping.topping.service.ToppingService;

/**
 * 로그인에 대한 세부컨트롤러
 * @author AS
 */
public class CommentRegistController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		Logger logger = Logger.getLogger(Log4JExample.class);
		logger.debug("[debug] : CommentRegistController");
		
		String memberId = request.getParameter("memberId");
		String satisfaction = request.getParameter("satisfaction");
		String content = request.getParameter("content");
		String productId = request.getParameter("productId");
		System.out.println(productId);
		
		Comment comment = new Comment();
		comment.setContent(content);
		comment.setSatisfaction(satisfaction);
		comment.setMemberId(memberId);
		comment.setProductId(Integer.parseInt(productId));
		
		CommentService service = CommentService.getInstance();
		service.regist(comment);
		List<Comment> commentList = service.getAll(Integer.parseInt(productId));
		
		ProductService productService = ProductService.getInstance();
		Product product = productService.get(Integer.parseInt(productId));
		
		ToppingService toppingService = ToppingService.getInstance();
		List<Topping> toppingList = toppingService.getAll();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("product", product);
		mav.addObject("commentList", commentList);
		mav.addObject("toppingList", toppingList);
		mav.addObject("contentFile", "../product/product_view.jsp");
		return mav;
	}
}