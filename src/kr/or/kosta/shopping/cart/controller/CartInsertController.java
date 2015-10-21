package kr.or.kosta.shopping.cart.controller;

import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.cart.service.CartService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.product.domain.Product;

public class CartInsertController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String loginId = request.getParameter("loginId");
		String productId = request.getParameter("productId");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String picture = request.getParameter("pirture");
		String count = request.getParameter("count");
		
		Product product = new Product();
		product.setProductId(Integer.parseInt(productId));
		product.setName(name);
		product.setPrice(Integer.parseInt(price));
		product.setPicture(picture);
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("memberId", loginId);
		data.put("product", product);
		data.put("count", count);
		
		CartService service = CartService.getInstance();
		service.insert(data);
		
		// 카트 추가는 페이지 이동이 필요 없다고 생각됨 (아니면 나중에 수정)
		return null;
	}
}
