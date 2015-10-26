/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 12시 (조현빈)
 * */
package kr.or.kosta.shopping.orderlist.controller;



import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.orderlist.domain.OrderList;
import kr.or.kosta.shopping.orderlist.service.OrderListService;

public class OrderListViewController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		
		String loginId = null;
		
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
		
		OrderListService orderListService = OrderListService.getInstance();
		List<OrderList> list = orderListService.getAll(loginId);
		
		mav.addObject("orderList", list);
		mav.addObject("contentFile", "../user/myOrder.jsp");
		return mav;
	}
}
