package kr.or.kosta.shopping.qna.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.kosta.shopping.article.dao.ArticleDao;
import kr.or.kosta.shopping.article.dao.MybatisArticleDao;
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
	
	public Qna get(int qnaId) throws RuntimeException {
		Qna qna = null;
		try {
			qna = qnaDao.get(qnaId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return qna;
	}
	
	public List<Qna> getAll(int boardId) throws RuntimeException {
		List<Qna> qnaList = null;
		try {
			qnaList= qnaDao.getAll(boardId);
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return qnaList;
	}
	
	/**회원 목록*//*
	public List<User> list()throws RuntimeException{
		
		List<User> list= null;
		
		try {
			list= userDao.getAll();
			
		} catch (Exception e) {
			throw new RuntimeException();
			
		}
		return list;
	}

/*
	
	public static void main(String[] args) {
		ArticleService service = UserService.getInstance();
		service.add(new User("killer2", "김킬러", "1111"));
		System.out.println("등록완료");
	}*/
}
