package kr.or.kosta.shopping.order.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
		
		String cartId = request.getParameter("cartCheck");
		String jsonTxt = request.getParameter("json");
		JSONParser parser = new JSONParser();
		Object obj = null;
		List<HashMap<String, Object>> jsonStore = new ArrayList<HashMap<String, Object>>(); 
		try {
			obj = parser.parse(jsonTxt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		JSONArray array = (JSONArray) obj;
		for (int i = 0; i < array.size(); i++) {
			JSONObject jsonObj = (JSONObject)array.get(i);
			HashMap<String, Object> temp = new HashMap<String, Object>();
			temp.put("name", jsonObj.get("name"));
			temp.put("price", jsonObj.get("price"));
			temp.put("count", jsonObj.get("count"));
			temp.put("picture", jsonObj.get("picture"));
			jsonStore.add(temp);
		}
		
		ModelAndView mav = new ModelAndView();
		OrderService service = OrderService.getInstance();
		
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
		
		mav.addObject("cartId", cartId);
		mav.addObject("member", member);
		mav.addObject("allData", jsonStore);
		mav.addObject("contentFile", "/order/order.jsp");
		
		return mav;
	}
}