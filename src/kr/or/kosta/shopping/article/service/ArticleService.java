package kr.or.kosta.shopping.article.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.kosta.shopping.article.dao.ArticleDao;
import kr.or.kosta.shopping.article.dao.MybatisArticleDao;
import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;

/**
 *  
 * 서비스 계층은 사용 기술과 상관 없이 객체 지향 설계 원칙이 적용된 핵심 비즈니스 로직을 잘 담아내야 한다.
 * 싱글톤패턴 적용
 * */
public class ArticleService {

	private static ArticleService instance;
	ArticleDao articleDao;
	private ArticleService() throws Exception{
		
		DaoFactory daoFactory = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		articleDao  = (ArticleDao) daoFactory.getDao(MybatisArticleDao.class);
	}
	
	public static ArticleService getInstance(){
		if(instance == null)
			
			synchronized (ArticleService.class) {
				try {
					instance  = new ArticleService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		return instance;	
	}
	
	/**게시글 등록*/
	public void add(Article article)throws RuntimeException{
		
		/**비즈니스 로직 처리...*/
		try {
			articleDao.insert(article);

		} catch (Exception e) {
			
			throw new RuntimeException(e);
			
		}
	}
	
	public Article get(int aricleId) throws RuntimeException {
		Article article = null;
		try {
			article= articleDao.get(aricleId);
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return article;
	}
	public List<Article> getAll(int boardId) throws RuntimeException {
		List<Article> articleList = null;
		try {
			articleList= articleDao.getAll(boardId);

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return articleList;
	}
	/*조회수 증가.*/
	public void updateHitcount(int aricleId)throws RuntimeException{
		try {
			articleDao.updateHitcount(aricleId);	
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public int getAllCnt()throws RuntimeException{
		int listCount = 0;
		try {
			listCount= articleDao.getAllCnt();
		} catch (Exception e) {
			throw new RuntimeException(e);
			
		}
		return listCount;
	}
	
	public int getAllSearchCnt(HashMap<String, Object> type)throws RuntimeException{
		int listCount = 0;
		try {
			listCount= articleDao.getAllSearchCnt(type);
		} catch (Exception e) {
			throw new RuntimeException(e);
			
		}
		return listCount;
	}
	
	public List<Article> getAllSearch(HashMap<String, Object> type) throws RuntimeException {
		List<Article> articleList = null;
		try {
			articleList= articleDao.getAllSearch(type);

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return articleList;
	}
	
	public List<Article> getIndexArticle(int boardId) throws RuntimeException{
		List<Article> articleList = null;
		try {
			articleList= articleDao.getIndexArticle(boardId);

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return articleList;
	}
	
	/*수정 .*/
	public void modify(Article article)throws RuntimeException{
		try {
			articleDao.modify(article);	
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	/*삭제*/
	public void delete(String articleId)throws RuntimeException{
		try {
			articleDao.delete(articleId);	
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
