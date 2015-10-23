package kr.or.kosta.shopping.order.controller;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

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
		String jsonTxt = request.getParameter("json");
		JSONParser parser = new JSONParser();
		Object obj = null;
		
		try {
			obj = parser.parse(jsonTxt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		JSONArray array = (JSONArray) obj;
		for (int i = 0; i < array.size(); i++) {
			JSONObject jsonObj = (JSONObject)array.get(i);
			System.out.println(jsonObj.get("name"));
			System.out.println(jsonObj.get("price"));
			System.out.println(jsonObj.get("count"));
		}
		
		ModelAndView mav = new ModelAndView();
		OrderService service = OrderService.getInstance();
		
		String loginId = null;
		String productName = null;
		String productImg = null;
		
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
		
		productName = request.getParameter("productName");
		
		productImg = service.getProductInfo(productName);
		
		Member member = service.getInfo(loginId);
		
		String phoneNum = member.getPhoneNumber();
		
		String phoneResult[] =  phoneNum.split("-");

		member.setPhoneNumber2(phoneResult[1]);
		member.setPhoneNumber3(phoneResult[2]);
		member.setPhoneNumber(phoneResult[0]);
		
		mav.addObject("member", member);
		mav.addObject("productImg", productImg);
		
		mav.addObject("contentFile", "/order/order.jsp");
		
		return mav;
	}
	
}