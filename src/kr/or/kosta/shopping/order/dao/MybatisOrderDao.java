package kr.or.kosta.shopping.order.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.kosta.shopping.order.domain.Order;

/**
 * Mybatis를 이용한 디비 연동
 * @author 가승호
 * @작성일 : 2015/10/21
 */
public class MybatisOrderDao  {
	
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	//전체 주문 목록
	public List<Order> getAll() throws RuntimeException{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Order> list = new ArrayList<Order>();
		try {
			OrderDao dao = (OrderDao) sqlSession.getMapper(OrderDao.class);
			list = dao.getAll();
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	//한개의 주문 가져오기
	public Order get(int orderNum) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Order order = new Order();
		try {
			OrderDao dao = (OrderDao) sqlSession.getMapper(OrderDao.class);
			order = dao.get(orderNum);
		} finally {
			sqlSession.close();
		}
		return order;
	}
}
