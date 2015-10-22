package kr.or.kosta.shopping.qna.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
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
	
	@Override
	public Qna get(int qnaId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Qna qna = null;
		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			qna = dao.get(qnaId);
			
		}finally{
			sqlSession.close();
		}
		return qna;
	}
	
	public List<Qna> getAll(int boardId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Qna>  qnaList =null;

		try{
			QnaDao dao = (QnaDao)sqlSession.getMapper(QnaDao.class);
			qnaList = dao.getAll(boardId);
			
		}finally{
			sqlSession.close();
		}
		return qnaList;
	}
}
