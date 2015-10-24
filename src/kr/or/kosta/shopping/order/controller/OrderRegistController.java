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

import com.sun.org.apache.xpath.internal.operations.Or;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.order.domain.Order;
import kr.or.kosta.shopping.order.service.OrderService;
import kr.or.kosta.shopping.orderlist.domain.OrderList;
import kr.or.kosta.shopping.orderlist.service.OrderListService;
import kr.or.kosta.shopping.product.service.ProductService;

/**
 * 주문내역 등록에 대한 세부컨트롤러
 * @author 가승호 유안상
 * @작성일 : 2015/10/21
 * @수정일 : 2015/10/24
 */
public class OrderRegistController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
		ModelAndView mav = new ModelAndView();
		
		String jsonTxt = request.getParameter("json");
		JSONParser parser = new JSONParser();
		Object obj = null;
		List<HashMap<String, Object>> jsonStore = new ArrayList<HashMap<String, Object>>();
		try {
			obj = parser.parse(jsonTxt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		StringBuilder nameTemp = new StringBuilder();
		JSONArray array = (JSONArray) obj;
		for (int i = 0; i < array.size(); i++) {
			JSONObject jsonObj = (JSONObject)array.get(i);
			HashMap<String, Object> temp = new HashMap<String, Object>();
			temp.put("name", jsonObj.get("name"));
			nameTemp.append(jsonObj.get("name") + "<br>");
			temp.put("price", jsonObj.get("price"));
			temp.put("count", jsonObj.get("count"));
			temp.put("picture", jsonObj.get("picture"));
			jsonStore.add(temp);
		}
		
		String productName = nameTemp.toString().substring(0, nameTemp.length()-2);
		
		String loginId = null;
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String payment = request.getParameter("payment2");
		String recipient = request.getParameter("recipient");
		String orderComment = request.getParameter("orderComment");
		String totalPrice = request.getParameter("lastTotalPrice");
		
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
		
		OrderList orderList = new OrderList();
		orderList.setMemeberId(loginId);
		orderList.setAddress(address);
		orderList.setAddress2(address2);
		orderList.setPayment(payment);
		orderList.setRecipient(recipient);
		orderList.setOrderComment(orderComment);
		orderList.setTotalPrice(Integer.parseInt(totalPrice));
		
		orderListService.insert(orderList);
		
		orderList.setOrderListNum(orderListService.recently(loginId).getOrderListNum());
		
		OrderService orderService = OrderService.getInstance();
		ProductService productService = ProductService.getInstance();
		for (HashMap<String, Object> data : jsonStore) {
			Order order = new Order();
			order.setOrderCount(Integer.parseInt((String)data.get("count")));
			order.setPrice(Integer.parseInt((String)data.get("price")));
			order.setProductName((String)data.get("name"));
			order.setProductPicture((String)data.get("picture"));
			order.setTotalPrice(Integer.parseInt((String)data.get("price")) * Integer.parseInt((String)data.get("count")));
			order.setOrderListNum(orderList.getOrderListNum());
			orderService.insert(order);
			HashMap<String, Object> temp = new HashMap<String, Object>();
			temp.put("name", order.getProductName().split("\\(")[0].trim());
			temp.put("count", order.getOrderCount());
			productService.updateCount(temp);
		}
		
		mav.addObject("productName", productName);
		mav.addObject("orderList", orderList);
		mav.addObject("contentFile", "/order/orderCheck.jsp");
		
		return mav;
	}
}