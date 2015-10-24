package kr.or.kosta.shopping.product.service;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.product.dao.MybatisProductDao;
import kr.or.kosta.shopping.product.dao.ProductDao;
import kr.or.kosta.shopping.product.domain.Product;

public class ProductService {
	private static ProductService instance;
	ProductDao productDao;
	
	//throws RuntimeException
	private ProductService() throws Exception{
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		productDao = (ProductDao)dao.getDao(MybatisProductDao.class);
	}
	
	public static ProductService getInstance(){
		if(instance == null){
				synchronized (ProductService.class){
				try {
					instance = new ProductService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}
	
	public List<Product> getAll() throws RuntimeException{
		List<Product> list = null;
		try{
			list = productDao.getAll();
		}catch (Exception e){
			throw new RuntimeException(e.toString());
		}
		return list;
	}
	
	public Product get(int productId) throws RuntimeException{
		Product product = null;
		try{
			product = productDao.get(productId);
		}catch (Exception e){
			throw new RuntimeException(e.toString());
		}
		return product;
	}
	
	public List<Product> expensive() throws RuntimeException{
		List<Product> list = null;
		try{
			list = productDao.expensive();
		}catch (Exception e){
			throw new RuntimeException(e.toString());
		}
		return list;
	}
	
	public void updateCount(HashMap<String, Object> data) throws RuntimeException{
		try{
			productDao.updateCount(data);
		}catch (Exception e){
			throw new RuntimeException(e.toString());
		}
	}
}
