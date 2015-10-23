package kr.or.kosta.shopping.order.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
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
		
		String memberId = null;
		String address = null;
		String address2 = null;
		String payment = null;
		String recipient = null;
		String comment = null;
		String productName = null;
		String toppingName = null;
		
//		memberId = request.getAttribute(arg0)
		
		
		
		mav.addObject("contentFile", "/order/orderCheck.jsp");
		
		return mav;
	}
}