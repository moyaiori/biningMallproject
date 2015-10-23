package kr.or.kosta.shopping.qna.service;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.article.dao.ArticleDao;
import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.qna.dao.MybatisQnaDao;
import kr.or.kosta.shopping.qna.dao.QnaDao;
import kr.or.kosta.shopping.qna.domain.Qna;

/**
 *  
 * 서비스 계층은 사용 기술과 상관 없이 객체 지향 설계 원칙이 적용된 핵심 비즈니스 로직을 잘 담아내야 한다.
 * 싱글톤패턴 적용
 * */
public class QnaService {

	private static QnaService instance;
	QnaDao qnaDao;
	ArticleDao articledao;
	private QnaService() throws Exception{
		
		DaoFactory daoFactory = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		qnaDao = (QnaDao)daoFactory.getDao(MybatisQnaDao.class);
	}
	
	public static QnaService getInstance(){
		if(instance == null)
			
			synchronized (QnaService.class) {
				try {
					instance  = new QnaService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		return instance;	
	}
	
	/**게시글 등록*/
	public void add(Qna qna)throws RuntimeException{
		
		/**비즈니스 로직 처리...*/
		try {
			qnaDao.insert(qna);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	/** 게시글 답변 등록 */
	public void addRe(Qna qna)throws RuntimeException{
		System.out.println("service . addRe() 진입");
		/**비즈니스 로직 처리...*/
		try {
			qnaDao.insertRe(qna);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
	public Article get(int articleId) throws RuntimeException {
		Article article = null;
		try {
			article = qnaDao.get(articleId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return article;
	}
	
	public List<Article> getAll(int boardId) throws RuntimeException {
		List<Article> qnaList = null;
		try {
			qnaList= qnaDao.getAll(boardId);
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return qnaList;
	}
	
	public int getAllCnt()throws RuntimeException{
		int listCount = 0;
		try {
			listCount= qnaDao.getAllCnt();
		} catch (Exception e) {
			throw new RuntimeException(e);
			
		}
		return listCount;
	}
	
	/*조회수 증가.*/
	public void updateHitcount(int articleId)throws RuntimeException{
		try {
			qnaDao.updateHitcount(articleId);	
		} catch (Exception e) {
			throw new RuntimeException(e);
			
		}
	}
	
	public int getAllSearchCnt(HashMap<String, Object> type)throws RuntimeException{
		int listCount = 0;
		try {
			listCount= qnaDao.getAllSearchCnt(type);
		} catch (Exception e) {
			throw new RuntimeException(e);
			
		}
		return listCount;
	}
	
	public List<Article> getAllSearch(HashMap<String, Object> type) throws RuntimeException {
		List<Article> articleList = null;
		try {
			articleList= qnaDao.getAllSearch(type);

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return articleList;
	}

}
