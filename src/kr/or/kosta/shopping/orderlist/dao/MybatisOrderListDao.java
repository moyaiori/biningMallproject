package kr.or.kosta.shopping.orderlist.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.sun.swing.internal.plaf.metal.resources.metal;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.order.domain.Order;
import kr.or.kosta.shopping.orderlist.domain.OrderList;

/**
 * Mybatis를 이용한 디비 연동
 * 
 * @author 가승호
 * @작성일 : 2015/10/21
 */
public class MybatisOrderListDao implements OrderListDao {

	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	// 주문항목 등록하기
	public void insert(OrderList orderlist) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			OrderListDao dao = sqlSession.getMapper(OrderListDao.class);
			dao.insert(orderlist);
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

	// 전체 주문 목록
	public List<OrderList> getAll(String memberId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<OrderList> list = new ArrayList<OrderList>();
		try {
			OrderListDao dao = (OrderListDao) sqlSession.getMapper(OrderListDao.class);
			list = dao.getAll(memberId);
		} finally {
			sqlSession.close();
		}
		return list;
	}
	
	@Override
	public OrderList recently(String memberId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		OrderList orderList = new OrderList();
		try {
			OrderListDao dao = (OrderListDao) sqlSession.getMapper(OrderListDao.class);
			orderList = dao.recently(memberId);
		} finally {
			sqlSession.close();
		}
		return orderList;
	}
}











