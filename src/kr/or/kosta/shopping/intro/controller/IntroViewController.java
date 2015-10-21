package kr.or.kosta.shopping.intro.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.kosta.shopping.common.controller.Controller;
import kr.or.kosta.shopping.common.controller.ModelAndView;
import kr.or.kosta.shopping.member.service.MemberService;

/** 
 *   /index 요청시
 * @author Lee Gwangyong
 *
 */
public class IntroViewController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException {

		MemberService service = MemberService.getInstance();
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("contentFile", "/menus/intro.jsp");
		return mav;
	}

}
