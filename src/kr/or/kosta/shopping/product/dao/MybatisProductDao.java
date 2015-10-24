package kr.or.kosta.shopping.product.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.product.domain.Product;

/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisProductDao implements ProductDao {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Product> getAll() throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Product> list = new ArrayList<Product>();
		try {
			ProductDao dao = (ProductDao) sqlSession.getMapper(ProductDao.class);
			logger.debug("[DEBUG] : getAll()에서 발생");
			list = dao.getAll();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	@Override
	public Product get(int productId) throws Exception{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Product product = null;
		try{
			ProductDao dao  = (ProductDao) sqlSession.getMapper(ProductDao.class);
			product = dao.get(productId);
		}finally{
			sqlSession.close();
		}
		return product;
	}
	
	@Override
	public List<Product> expensive() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Product> list = new ArrayList<Product>();
		try {
			ProductDao dao = (ProductDao) sqlSession.getMapper(ProductDao.class);
			logger.debug("[DEBUG] : expensive()에서 발생");
			list = dao.expensive();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	@Override
	public void updateCount(HashMap<String, Object> data) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			ProductDao dao = (ProductDao) sqlSession.getMapper(ProductDao.class);
			logger.debug("[DEBUG] : updateCount()에서 발생");
			dao.updateCount(data);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
	}
}
