package kr.or.kosta.shopping.article.service;

import kr.or.kosta.shopping.article.dao.ArticleDao;
import kr.or.kosta.shopping.article.dao.MybatisArticleDao;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;

/**
 *  
 * 서비스 계층은 사용 기술과 상관 없이 객체 지향 설계 원칙이 적용된 핵심 비즈니스 로직을 잘 담아내야 한다.
 * 싱글톤패턴 적용
 * */
public class ArticleService {

	private static ArticleService instance;
	ArticleDao articleDao;
	private ArticleService() throws Exception{
		
		DaoFactory daoFactory = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		articleDao  = (ArticleDao) daoFactory.getDao(MybatisArticleDao.class);
	}
	
	public static ArticleService getInstance(){
		if(instance == null)
			
			synchronized (ArticleService.class) {
				try {
					instance  = new ArticleService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		return instance;	
	}
	
	/**회원 등록*//*
	public void add(User user)throws RuntimeException{
		
		*//**비즈니스 로직 처리...*//*
		try {

			userDao.add(user);
		} catch (Exception e) {
			
			throw new RuntimeException(e);
			
		}
	}
	
	*//**회원 목록*//*
	public List<User> list()throws RuntimeException{
		
		List<User> list= null;
		
		try {
			list= userDao.getAll();
			
		} catch (Exception e) {
			throw new RuntimeException();
			
		}
		return list;
	}

/*
	
	public static void main(String[] args) {
		ArticleService service = UserService.getInstance();
		service.add(new User("killer2", "김킬러", "1111"));
		System.out.println("등록완료");
	}*/
}
