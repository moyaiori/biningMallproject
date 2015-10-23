package kr.or.kosta.shopping.qna.dao;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.qna.domain.Qna;

/**
 * QnA 게시판  관련 영속성 처리 표준 규약
 * @author 가승호
 * @작성일 : 2015/10/22
 */
public interface QnaDao{
	/**게시판 등록 */
	public void insert(Qna qna) throws RuntimeException;
	
	public Article get(int artilceId) throws RuntimeException;
	
	public List<Article> getAll(int boardId) throws RuntimeException;

	public int getAllCnt() throws RuntimeException;
	
	public List<Article> getAllSearch(HashMap<String, Object> type) throws RuntimeException;

	public void updateHitcount(int aricleId) throws RuntimeException;

	public int getAllSearchCnt(HashMap<String, Object> type) throws RuntimeException;

	public void insertRe(Qna qna) throws RuntimeException;
	
	
	
}
	









