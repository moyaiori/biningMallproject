package kr.or.kosta.shopping.topping.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.dao.MemberDao;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.topping.domain.Topping;

/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisToppingDao implements ToppingDao {
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Topping> getAll() throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Topping> list = new ArrayList<Topping>();
		try {
			ToppingDao dao = (ToppingDao) sqlSession.getMapper(ToppingDao.class);
			list = dao.getAll();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	@Override
	public Topping get(int toppingId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Topping topping = new Topping();
		try {
			ToppingDao dao = (ToppingDao) sqlSession.getMapper(ToppingDao.class);
			topping = dao.get(toppingId);
		} finally {
			sqlSession.close();
		}
		return topping;
	}
}
