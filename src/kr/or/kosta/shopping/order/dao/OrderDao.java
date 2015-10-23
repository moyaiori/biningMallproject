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
	
	/** 주문 내역 등록 */
	public void insert(Order order) throws RuntimeException;
	
	/** 회원정보(배송지 정보) 가져오기 */
	public Member getInfo(String memberId) throws RuntimeException;
	
	/** 주문 전체 목록 조회 */
	public List<Order> getAll() throws RuntimeException;
	
	/** 한개의 주문 가져오기 */
	public Order get(int orderNum) throws RuntimeException;
	
	/** 주문한 물건 정보 가져오기 */
	public String getProductInfo(String productName) throws RuntimeException;
	
	
}









