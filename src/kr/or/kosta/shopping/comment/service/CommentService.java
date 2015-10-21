package kr.or.kosta.shopping.comment.service;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.comment.dao.CommentDao;
import kr.or.kosta.shopping.comment.dao.MybatisCommentDao;
import kr.or.kosta.shopping.comment.domain.Comment;
import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.dao.MemberDao;
import kr.or.kosta.shopping.member.dao.MybatisMemberDao;
import kr.or.kosta.shopping.member.domain.Member;
import kr.or.kosta.shopping.product.dao.MybatisProductDao;
import kr.or.kosta.shopping.product.dao.ProductDao;

public class CommentService {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private static CommentService instance;
	CommentDao commentDao;
	
	//throws RuntimeException
	private CommentService() throws Exception{
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		commentDao = (MybatisCommentDao)dao.getDao(MybatisCommentDao.class);
	}
	
	public static CommentService getInstance(){
		if(instance == null){
				synchronized (CommentService.class){
				try {
					instance = new CommentService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}
	
	/** 상품평 등록 */
	public void regist(Comment comment) throws RuntimeException{
		try {
			commentDao.insert(comment);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	/** 상품평 목록 */
	public List<Comment> getAll(int productId) throws RuntimeException{
		List<Comment> list = null;
		try {
			list = commentDao.getAll(productId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/** 상품평 삭제 */
	public void delete(int commentId) throws RuntimeException{
		try {
			commentDao.delete(commentId);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
