package kr.or.kosta.shopping.cart.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.cart.domain.Cart;
import kr.or.kosta.shopping.cart.service.CartService;
import kr.or.kosta.shopping.comment.domain.Comment;
import kr.or.kosta.shopping.comment.service.CommentService;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.product.domain.Product;
import kr.or.kosta.shopping.product.service.ProductService;
import kr.or.kosta.shopping.topping.domain.Topping;
import kr.or.kosta.shopping.topping.service.ToppingService;

public class CartInsertController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String loginId = request.getParameter("loginId");
		String productId = request.getParameter("productId");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String picture = request.getParameter("picture");
		String orderCount = request.getParameter("count");
		String toppingPrice = request.getParameter("toppingPrice");
		String toppingName = request.getParameter("toppingName");
		String result = request.getParameter("result");
		
		Product product = new Product();
		product.setProductId(Integer.parseInt(productId));
		product.setName(name);
		product.setPrice(Integer.parseInt(price));
		product.setPicture(picture);
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("memberId", loginId);
		data.put("product", product);
		data.put("count", orderCount);
		data.put("toppingPrice", toppingPrice);
		data.put("toppingName", toppingName);
		
		CartService service = CartService.getInstance();
		service.insert(data);
		
		ModelAndView mav = new ModelAndView();
		
		ProductService productService = ProductService.getInstance();
		Product viewProduct = productService.get(Integer.parseInt(productId));
		
		ToppingService toppingService = ToppingService.getInstance();
		List<Topping> toppingList = toppingService.getAll();
		
		CommentService commentService = CommentService.getInstance();
		List<Comment> commentList = commentService.getAll(Integer.parseInt(productId));
		
		mav.addObject("commentList", commentList);
		mav.addObject("toppingList", toppingList);
		mav.addObject("product", viewProduct);
		if(result.equals("true")){
			List<Cart> list = service.getAll(loginId);
			mav.addObject("cartList", list);
			mav.addObject("contentFile", "../cart/cart.jsp");
		}else{
			mav.addObject("contentFile", "../product/product_view.jsp");
		}
		return mav;
	}
}
