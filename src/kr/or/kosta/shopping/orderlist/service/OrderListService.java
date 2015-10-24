package kr.or.kosta.shopping.orderlist.service;
/**
 * @작성자 : 가승호
 * @작성일 : 2015/10/21
 */

import java.util.List;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.orderlist.dao.MybatisOrderListDao;
import kr.or.kosta.shopping.orderlist.dao.OrderListDao;
import kr.or.kosta.shopping.orderlist.domain.OrderList;

public class OrderListService {
	private static OrderListService instance;
	OrderListDao orderListDao;

	private OrderListService() throws Exception {
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		orderListDao = (MybatisOrderListDao) dao.getDao(MybatisOrderListDao.class);
	}

	public static OrderListService getInstance() {
		if (instance == null) {
			synchronized (OrderListService.class) {
				try {
					instance = new OrderListService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}

	/** 주문등록 */
	public void insert(OrderList orderlist) throws RuntimeException {
		try {
			orderListDao.insert(orderlist);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	} 

	/** 한개의 주문 가져오기 */
	public List<OrderList> getAll(String memberId) throws RuntimeException {
		List<OrderList> list = null;
		try {
			list = orderListDao.getAll(memberId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;
	}
	
	public OrderList recently(String memberId) throws RuntimeException {
		OrderList orderList = null;
		try {
			orderList = orderListDao.recently(memberId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return orderList;
	}

}
