package kr.or.kosta.shopping.product.dao;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.product.domain.Product;

/**
 * 회원 관련 영속성 처리 표준 규약
 * @author 유안상
 */
public interface ProductDao {
	
	/** 밥버거 전체 목록 조회 */
	public List<Product> getAll() throws RuntimeException;
	
	/** 밥버거 하나 조회 */
	public Product get(int productId) throws Exception;
	
	/** 비싼 밥버거 3개 */
	public List<Product> expensive() throws Exception;
	
	/** BEST 3개 */
	public List<Product> best() throws Exception;
	
	/** 주문을 했을때 해당 상품들의 판매량을 업데이트*/
	public void updateCount(HashMap<String, Object> data) throws RuntimeException;
}









