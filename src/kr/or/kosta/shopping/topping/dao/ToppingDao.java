package kr.or.kosta.shopping.topping.dao;

import java.util.List;

import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.topping.domain.Topping;

/**
 * 사원 관련 영속성 처리 표준 규약
 * @author 유안상
 *
 */
public interface ToppingDao {
	
	/** 토핑 전체 목록 조회 */
	public List<Topping> getAll() throws RuntimeException;
	
	/** 한개의 토핑 가져오기 */
	public Topping get(int toppingId) throws RuntimeException;
}









