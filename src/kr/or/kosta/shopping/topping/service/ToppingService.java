package kr.or.kosta.shopping.topping.service;

import java.util.List;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.product.dao.MybatisProductDao;
import kr.or.kosta.shopping.product.dao.ProductDao;
import kr.or.kosta.shopping.product.domain.Product;
import kr.or.kosta.shopping.topping.dao.MybatisToppingDao;
import kr.or.kosta.shopping.topping.dao.ToppingDao;
import kr.or.kosta.shopping.topping.domain.Topping;

public class ToppingService {
	private static ToppingService instance;
	ToppingDao toppingDao;
	
	//throws RuntimeException
	private ToppingService() throws Exception{
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		toppingDao = (ToppingDao)dao.getDao(MybatisToppingDao.class);
	}
	
	public static ToppingService getInstance(){
		if(instance == null){
				synchronized (ToppingService.class){
				try {
					instance = new ToppingService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}
	
	public List<Topping> getAll() throws RuntimeException{
		List<Topping> list = null;
		try{
			list = toppingDao.getAll();
		}catch (Exception e){
			throw new RuntimeException(e.toString());
		}
		return list;
	}
	
	public Topping get(int toppingId) throws RuntimeException{
		Topping topping = null;
		try{
			topping = toppingDao.get(toppingId);
		}catch (Exception e){
			throw new RuntimeException(e.toString());
		}
		return topping;
	}	
}
