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

public class CartSelDeleteController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String loginId = request.getParameter("loginId");
		String cartId = request.getParameter("cartId");
		CartService service = CartService.getInstance();
		
		String[] cartIdList = cartId.split(",");
		
		for (int i = 0; i < cartIdList.length; i++) {
			HashMap<String, Object> data = new HashMap<String, Object>();
			data.put("memberId", loginId);
			data.put("cartId", cartIdList[i]);
			service.delete(data);
		}
		
		List<Cart> list = service.getAll(loginId);
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("cartList", list);
		mav.addObject("contentFile", "../cart/cart.jsp");
		
		return mav;
	}
}
