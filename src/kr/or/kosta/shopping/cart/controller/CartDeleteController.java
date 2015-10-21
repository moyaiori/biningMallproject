package kr.or.kosta.shopping.cart.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.cart.domain.Cart;
import kr.or.kosta.shopping.cart.service.CartService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;

public class CartDeleteController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String loginId = request.getParameter("loginId");
		String productId = request.getParameter("productId");
				
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("memberId", loginId);
		data.put("productId", productId);
		
		CartService service = CartService.getInstance();
		service.delete(data);
		
		List<Cart> list = service.getAll(loginId);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("cartList", list);
		mav.setView("cart.jsp"); // forward
		
		return mav;
	}
}