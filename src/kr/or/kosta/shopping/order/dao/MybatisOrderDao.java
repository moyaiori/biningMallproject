package kr.or.kosta.shopping.order.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.order.domain.Order;

/**
 * Mybatis를 이용한 디비 연동
 * @author 가승호
 * @작성일 : 2015/10/21
 */
public class MybatisOrderDao implements OrderDao{

	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	// 주문내역 등록하기
	public void insert(Order order) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			OrderDao dao = sqlSession.getMapper(OrderDao.class);
			dao.insert(order);
			logger.debug("[DEBUG] : insert()에서 발생");
			sqlSession.commit();
		}catch(Exception e){
			logger.warn("[WARN] : insert()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
	}
	

	

	// 전체 주문 목록
	public List<Order> getAll() throws RuntimeException {
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

	//배송지 정보 가져오기
	public Member getInfo(String memberId) throws RuntimeException{
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Member member = null;
	try{
		member = sqlSession.getMapper(OrderDao.class).getInfo(memberId);
	}finally{
		sqlSession.close();
	}
		
		return member;
	}
	
	// 한개의 주문 가져오기
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
