package kr.or.kosta.shopping.order.controller;


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.order.domain.Order;
import kr.or.kosta.shopping.order.service.OrderService;


/**
 * 주문내역 등록에 대한 세부컨트롤러
 * @author 가승호 유안상
 * @작성일 : 2015/10/21
 * @수정일 : 2015/10/24
 */
public class OrderDetailController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		String listNum = request.getParameter("listNum");
		ModelAndView mav = new ModelAndView();
		
		OrderService orderService = OrderService.getInstance();
		List<Order> list = orderService.getAll(Integer.parseInt(listNum));
		
		mav.addObject("list", list);
		mav.setView("../user/orderDetail.jsp");
		return mav;
	}
}