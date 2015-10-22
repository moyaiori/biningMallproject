package kr.or.kosta.shopping.article.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.article.domain.Article;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.product.dao.ProductDao;
import kr.or.kosta.shopping.product.domain.Product;

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
}
