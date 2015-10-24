package kr.or.kosta.shopping.order.dao;

import java.util.List;

import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.order.domain.Order;
import kr.or.kosta.shopping.topping.domain.Topping;

/**
 * 주문 관련 영속성 처리 표준 규약
 * @author 가승호
 * 작성일 : 2015/10/21
 */
public interface OrderDao {
	
	/** 주문 등록 */
	public void insert(Order order) throws RuntimeException;
	
	/** 주문 전체 목록 조회 */
	public List<Order> getAll(int orderListNum) throws RuntimeException;
	
	public Member getInfo(String memberId) throws RuntimeException;
	
}









