package kr.or.kosta.shopping.qna.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.article.dao.ArticleDao;
import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.qna.domain.Qna;

/**
 * Mybatis를 이용한 디비 연동
 * @author 가승호
 * @작성일 : 2015/10/22
 */
public class MybatisQnaDao implements QnaDao {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	
	// QNA 게시글 등록
	@Override
	public void insert(Qna qna) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			QnaDao dao = sqlSession.getMapper(QnaDao.class);
			dao.insert(qna);
			logger.debug("[DEBUG] : MybatisQnaDao - insert()에서 발생");
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : MybatisQnaDao -insert()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}
	
	//QNA 게시글에 대한 관리자의 답변 
	@Override
	public void insertRe(Qna qna) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			
			QnaDao dao = sqlSession.getMapper(QnaDao.class);
			dao.insertRe(qna);
			logger.debug("[DEBUG] : MybatisQnaDao - insertRe()에서 발생");
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : MybatisQnaDao -insertRe()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	
	
	
	@Override
	public Article get(int articleId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Article article = null;
		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			article = dao.get(articleId);
			logger.debug("[DEBUG] : MybatisQnaDao - get()에서 발생");
		}finally{
			sqlSession.close();
		}
		return article;
	}
	
	@Override
	public int getAllCnt() throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int listCount= 0;
		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			listCount=dao.getAllCnt();
			logger.debug("[DEBUG] : MybatisQnaDao - gtAllCnt()에서 발생");
			sqlSession.commit();
		}catch(Exception e){
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return listCount;
	}

	
	
	
	public List<Article> getAll(int boardId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Article> qnaList = null;

		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			qnaList = dao.getAll(boardId);
			
		}finally{
			sqlSession.close();
		}
		return qnaList;
	}
	
	//조회수증가
	@Override
	public void updateHitcount(int aricleId) throws RuntimeException {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			try{
				QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
				dao.updateHitcount(aricleId);
				sqlSession.commit();
			}catch(Exception e){
				sqlSession.rollback();
			}finally{
				sqlSession.close();
			}
	}

	//검색된 리스트 갯수
	@Override
	public int getAllSearchCnt(HashMap<String, Object> type) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int listCount= 0;
		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			listCount = dao.getAllSearchCnt(type);
			logger.debug("DEBUG : getAllSearchCnt()");
			sqlSession.commit();
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return listCount;
	}

	//검색 리스트
	@Override
	public List<Article> getAllSearch(HashMap<String, Object> type) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Article>  articleList =null;
		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			articleList = dao.getAllSearch(type);
		}finally{
			sqlSession.close();
		}
		return articleList;
	}

	@Override
	public void deleteQna(String articleId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			dao.deleteQna(articleId);
		}finally{
			sqlSession.close();
		}
	}

	@Override
	public void modifyQna(Article aricle) throws RuntimeException {
		// TODO Auto-generated method stub
		
	}

	
}
