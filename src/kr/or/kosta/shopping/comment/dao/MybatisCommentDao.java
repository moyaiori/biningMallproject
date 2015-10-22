package kr.or.kosta.shopping.comment.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.comment.domain.Comment;
import kr.or.kosta.shopping.member.domain.Member;

/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisCommentDao implements CommentDao {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Comment> getAll(int productId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Comment> list = new ArrayList<Comment>();
		try {
			CommentDao dao = (CommentDao) sqlSession.getMapper(CommentDao.class);
			logger.debug("[DEBUG] : getAll()에서 발생");
			list = dao.getAll(productId);
		} finally {
			sqlSession.close();
		}
		return list;
	}

	@Override
	public void insert(Comment comment) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			CommentDao dao = sqlSession.getMapper(CommentDao.class);
			dao.insert(comment);
			logger.debug("[DEBUG] : insert()에서 발생");
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : insert()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
	}

	@Override
	public void delete(int commentId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			CommentDao dao = sqlSession.getMapper(CommentDao.class);
			logger.debug("[DEBUG] : delete()에서 발생");
			dao.delete(commentId);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : delete()에서 발생");
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
}
