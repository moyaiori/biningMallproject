/*
 * 작성자 : 조현빈
 * 작성 최종 수정일 : 2015-10-21:오전 11시 (조현빈)
 * */
/*package kr.or.kosta.shopping.notice.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.notice.domain;
import kr.or.kosta.shopping.user.service.UserService;

public class NoticeRegistController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		String  name	= request.getParameter("name");
		String passwd= request.getParameter("passwd");
			
		User user = new User(id,name,passwd);
		
		UserService service =UserService.getInstance();
		service.add(user);
		

		mav.addObject("user", user);
		mav.setView("/user/registResult.jsp");//jsp�� ���� ���.
		//mav.setView("redirect:/model2/hello.jsp");//jsp�� ���� ���.
			
		return mav;
	}

}
*/