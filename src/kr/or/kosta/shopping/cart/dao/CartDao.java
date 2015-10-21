package kr.or.kosta.shopping.cart.dao;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.cart.domain.Cart;

/**
 * 카트 관련 영속성 처리 표준 규약
 * @author 유안상
 */
public interface CartDao {
	
	/** 카트 전체 목록 조회 */
	public List<Cart> getAll(String memberId) throws RuntimeException;
	
	/** 카트에 목록 추가 */
	public void insert(HashMap<String, Object> data) throws RuntimeException;
	
	/** 카트에 목록 삭제 */
	public void delete(HashMap<String, Object> data) throws RuntimeException;
}









