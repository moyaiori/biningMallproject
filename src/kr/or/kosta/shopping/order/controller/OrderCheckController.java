package kr.or.kosta.shopping.order.controller;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xpath.internal.operations.Or;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.order.domain.Order;
import kr.or.kosta.shopping.order.service.OrderService;

/**
 * 주문내역 등록에 대한 세부컨트롤러
 * @author 가승호
 * @작성일 : 2015/10/21
 */
public class OrderCheckController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		OrderService service = OrderService.getInstance();
		System.out.println("OrderCheckController 진입");
		
		String loginId = null;
		String address = null;
		String address2 = null;
		String payment = null;
		String recipient = null;
		String comment = null;
		String productName = null;
		String toppingName = null;
		
		// 쿠키값 가져오기
	    Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for (Cookie cookie : cookies) {
				if(cookie.getName().equals("loginId")){
					cookie.setPath("/");
					loginId = cookie.getValue();
				}				
			}			
		}

		address = request.getParameter("address");
		address2 = request.getParameter("address2");
		payment = request.getParameter("payment");
		recipient = request.getParameter("recipient");
		comment = request.getParameter("comment");
		productName = request.getParameter("productname");
		toppingName = request.getParameter("toppingname");
		
		Order order = new Order(0, loginId, address, address2, null, payment, recipient, productName, toppingName, comment, 0);
		
		service.insert(order);
		mav.addObject("order", order);
		mav.addObject("contentFile", "/order/orderCheck.jsp");
		
		return mav;
	}
}