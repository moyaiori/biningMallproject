package kr.or.kosta.shopping.comment.dao;

import java.util.List;

import kr.or.kosta.shopping.comment.domain.Comment;

/**
 * 상품평 영속성 처리 표준 규약
 * @author 유안상
 */
public interface CommentDao {
	
	/** 해당글의 상품평 전체 목록 조회 */
	public List<Comment> getAll(int productId) throws RuntimeException;
	
	/** 상품평 등록 */
	public void insert(Comment comment) throws RuntimeException;
	
	/** 상품평  삭제 */
	public void delete(int commentId) throws RuntimeException;
	
}









