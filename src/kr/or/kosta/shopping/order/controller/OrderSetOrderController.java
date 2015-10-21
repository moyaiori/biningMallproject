package kr.or.kosta.shopping.order.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.member.service.MemberService;
import kr.or.kosta.shopping.order.domain.Order;
import kr.or.kosta.shopping.order.service.OrderService;

/**
 * 주문내역 등록에 대한 세부컨트롤러
 * @author 가승호
 * @작성일 : 2015/10/21
 */
public class OrderSetOrderController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		String orderNum = request.getParameter("orderNum");
		String memberId = request.getParameter("memberId");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String orderDate = request.getParameter("orderDate");
		String payment = request.getParameter("payment");
		String recipient = request.getParameter("recipient");
		String totalPrice = request.getParameter("totalPrice");
		
		
		
		
		Order order = new Order(Integer.parseInt(orderNum), memberId,  address,  address2, orderDate,  payment, recipient, Integer.parseInt(totalPrice));
		
		OrderService service = OrderService.getInstance();
		service.insert(order);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("order", order);
		mav.setView("/index.jsp"); // forward
		
		return mav;
	}
}