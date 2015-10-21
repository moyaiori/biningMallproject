package kr.or.kosta.shopping.cart.service;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.cart.dao.CartDao;
import kr.or.kosta.shopping.cart.dao.MybatisCartDao;
import kr.or.kosta.shopping.cart.domain.Cart;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.product.domain.Product;

public class CartService {
	private static CartService instance;
	CartDao cartdao;
	
	//throws RuntimeException
	private CartService() throws Exception{
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		cartdao = (MybatisCartDao)dao.getDao(MybatisCartDao.class);
	}
	
	public static CartService getInstance(){
		if(instance == null){
				synchronized (CartService.class){
				try {
					instance = new CartService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}
	
	/** 카트에 목록 추가 */
	public void insert(HashMap<String, Object> data) throws RuntimeException{
		try {
			cartdao.insert(data);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	/** 해당 아이디의 카트 목록 전체보기 */
	public List<Cart> getAll(String memberId) throws RuntimeException{
		List<Cart> list = null;
		try {
			list = cartdao.getAll(memberId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/** 해당 아이디의 카트 목록 전체보기 */
	public void delete(HashMap<String, Object> data) throws RuntimeException{
		try {
			cartdao.delete(data);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
}
