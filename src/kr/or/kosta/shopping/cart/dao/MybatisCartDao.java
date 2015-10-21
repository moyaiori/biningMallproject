package kr.or.kosta.shopping.cart.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.cart.domain.Cart;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.domain.Member;

/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisCartDao implements CartDao {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Cart> getAll(String memberId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Cart> list = new ArrayList<Cart>();
		try {
			CartDao dao = (CartDao) sqlSession.getMapper(CartDao.class);
			logger.debug("[DEBUG] : getAll()에서 발생");
			list = dao.getAll(memberId);
		} finally {
			sqlSession.close();
		}
		return list;
	}

	@Override
	public void insert(HashMap<String, Object> data) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			CartDao dao = sqlSession.getMapper(CartDao.class);
			dao.insert(data);
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
	public void delete(HashMap<String, Object> data) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			CartDao dao = sqlSession.getMapper(CartDao.class);
			logger.debug("[DEBUG] : insert()에서 발생");
			dao.delete(data);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : insert()에서 발생");
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
}
