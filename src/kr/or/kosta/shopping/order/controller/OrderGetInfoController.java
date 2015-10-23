package kr.or.kosta.shopping.order.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.order.service.OrderService;

/**
 *  상품상세 & 장바구니에서 가져온 주문 데이터 처리
 * @author 이광용
 * @작성일 : 2015/10/22
 */
public class OrderGetInfoController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		OrderService service = OrderService.getInstance();
		System.out.println("OrderGetInfoController 진입");
		
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
		
		Member member = service.getInfo(loginId);
		
		String phoneNum = member.getPhoneNumber();
		
		String phoneResult[] =  phoneNum.split("-");

		member.setPhoneNumber2(phoneResult[1]);
		member.setPhoneNumber3(phoneResult[2]);
		member.setPhoneNumber(phoneResult[0]);
		
		//System.out.println(member);
		
		mav.addObject("member", member);
		
		mav.addObject("contentFile", "/order/order.jsp");
		
		return mav;
	}
	
}