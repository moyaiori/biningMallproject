/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.product.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.product.domain.Product;
import kr.or.kosta.shopping.product.service.ProductService;

public class ProductWriteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		String productId = request.getParameter("productId");
		ModelAndView mav = new ModelAndView();
		
		ProductService service = ProductService.getInstance();
<<<<<<< HEAD
		
		
		mav.addObject("productId", productId);
=======
	
>>>>>>> 6b4a785c1a43e89bf43398e8810d6965d91c1f18
		mav.addObject("contentFile", "../product/product_write.jsp");

		return mav;
	}

}
