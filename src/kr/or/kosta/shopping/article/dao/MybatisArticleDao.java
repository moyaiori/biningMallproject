package kr.or.kosta.shopping.article.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.article.domain.Article;


/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisArticleDao implements ArticleDao {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public void insert(Article article) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			ArticleDao dao = sqlSession.getMapper(ArticleDao.class);
			dao.insert(article);
			logger.debug("[DEBUG] : MybatisArticleDao - insert()에서 발생");
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : MybatisArticleDao -insert()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
	}
	
	@Override
	public Article get(int aricleId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Article article = null;
		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			article = dao.get(aricleId);
			
		}finally{
			sqlSession.close();
		}
		return article;
	}
	
	public List<Article> getAll(int boardId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Article>  articleList =null;

		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			articleList = dao.getAll(boardId);

		}finally{
			sqlSession.close();
		}
		return articleList;
	}

	@Override
	public void updateHitcount(int aricleId) throws RuntimeException {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			try{
				ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
				dao.updateHitcount(aricleId);
				sqlSession.commit();
			}catch(Exception e){
				sqlSession.rollback();
			}finally{
				sqlSession.close();
			}
	}

	@Override
	public int getAllCnt() throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int listCount= 0;
		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			listCount=dao.getAllCnt();
			sqlSession.commit();
		}catch(Exception e){
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return listCount;
	}

	@Override
	public int getAllSearchCnt(HashMap<String, Object> type) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int listCount= 0;
		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			listCount = dao.getAllSearchCnt(type);
			logger.debug("DEBUG : 서치잼");
			sqlSession.commit();
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return listCount;
	}

	@Override
	public List<Article> getAllSearch(HashMap<String, Object> type) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Article>  articleList =null;
		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			articleList = dao.getAllSearch(type);
		}finally{
			sqlSession.close();
		}
		return articleList;
	}

	@Override
	public List<Article> getIndexArticle(int boardId) throws RuntimeException{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Article>  articleList =null;
		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			articleList = dao.getIndexArticle(boardId);
		}finally{
			sqlSession.close();
		}
		return articleList;
	}
	
	@Override
	public void modify(HashMap<String, Object> data) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try{
			ArticleDao dao = (ArticleDao)sqlSession.getMapper(ArticleDao.class);
			dao.modify(data);
			sqlSession.commit();
		}catch(Exception e){
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
	}

}
