package kr.or.kosta.shopping.order.service;
/**
 * OrderService
 * @작성자 : 가승호
 * @작성일 : 2015/10/21
 */

import java.util.List;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.dao.MemberDao;
import kr.or.kosta.shopping.member.dao.MybatisMemberDao;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.order.dao.MybatisOrderDao;
import kr.or.kosta.shopping.order.dao.OrderDao;
import kr.or.kosta.shopping.order.domain.Order;

public class OrderService {
	private static OrderService instance;
	OrderDao orderDao;

	// throws RuntimeException
	private OrderService() throws Exception {
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		orderDao = (MybatisOrderDao) dao.getDao(MybatisOrderDao.class);
	}

	public static OrderService getInstance() {
		if (instance == null) {
			synchronized (OrderService.class) {
				try {
					instance = new OrderService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}

	/** 주문 등록 */
	public void insert(Order order) throws RuntimeException {
		try {
			orderDao.insert(order);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	} 

	/** 주문 목록 */
	public List<Order> getAll(int orderListNumber) throws RuntimeException {
		List<Order> list = null;
		try {
			list = orderDao.getAll(orderListNumber);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;
	}
	
   /** 배송지 정보 가져오기 */
   public Member getInfo(String memberId) throws RuntimeException {
      Member member = new Member();
      try {
         member = orderDao.getInfo(memberId);
      } catch (Exception e) {
         throw new RuntimeException(e.toString());
      }
      return member;
   }
}
