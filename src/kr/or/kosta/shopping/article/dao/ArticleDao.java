package kr.or.kosta.shopping.article.dao;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.article.domain.Article;

/**
 * 사원 관련 영속성 처리 표준 규약
 * @author 유안상
 *
 */
public interface ArticleDao{
	/**게시판 등록 */
	public void insert(Article article) throws RuntimeException;
	
	public Article get(int aricleId) throws RuntimeException;
	
	public List<Article> getAll(int boardId) throws RuntimeException;
	
	/*검색시 전체 리스트*/
	public List<Article> getAllSearch(HashMap<String, Object> type) throws RuntimeException;

	public void updateHitcount(int aricleId) throws RuntimeException;

	public int getAllCnt() throws RuntimeException;

	public int getAllSearchCnt(HashMap<String, Object> type) throws RuntimeException;
	
	public List<Article> getIndexArticle(int boardId) throws RuntimeException;
	
	public void modify(HashMap<String, Object> data) throws RuntimeException;

	
}









