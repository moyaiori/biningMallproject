package kr.or.kosta.shopping.orderlist.dao;

import java.util.List;

import kr.or.kosta.shopping.orderlist.domain.OrderList;
/**
 * 주문 관련 영속성 처리 표준 규약
 * @author 가승호
 * 작성일 : 2015/10/21
 */
public interface OrderListDao {
	
	/** 주문항목 내역 등록 */
	public void insert(OrderList orderList) throws RuntimeException;
	
	/** 주문항목 전체 목록 조회 */
	public List<OrderList> getAll(String memberId) throws RuntimeException;
	
	/* 최근 주문 목록 가져오기 */
	public OrderList recently(String memberId) throws RuntimeException;
}









