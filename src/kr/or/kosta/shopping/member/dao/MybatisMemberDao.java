package kr.or.kosta.shopping.member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import kr.or.kosta.example.Log4JExample;
import kr.or.kosta.shopping.member.domain.Member;

/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisMemberDao implements MemberDao {
	
	Logger logger = Logger.getLogger(Log4JExample.class);
	private SqlSessionFactory sqlSessionFactory;

	public SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Member> getAll() throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Member> list = new ArrayList<Member>();
		try {
			MemberDao dao = (MemberDao) sqlSession.getMapper(MemberDao.class);
			logger.debug("[DEBUG] : getAll()에서 발생");
			list = dao.getAll();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	@Override
	public void insert(Member member) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			dao.insert(member);
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

	@Override
	public void update(Member member) throws RuntimeException {}

	@Override
	public void delete(int employeeId) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			logger.debug("[DEBUG] : insert()에서 발생");
			dao.delete(employeeId);
			sqlSession.commit();
		} catch (Exception e) {
			logger.warn("[WARN] : insert()에서 발생");
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
	@Override
	public Member isMember(String email) throws Exception {
		return null;
	}

	@Override
	public Member login(HashMap<String, Object> data) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Member member = null;
		try {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			member = dao.login(data);
			logger.debug("[DEBUG] : login()에서 발생");
		} catch (Exception e) {
			logger.warn("[WARN] : login()에서 발생");
			sqlSession.rollback();
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return member;
	}

	@Override
	public Member idChk(String id) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Member member = null;
		try {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			member = dao.idChk(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return member;
	}

	@Override
	public Member emailChk(String email) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Member member = null;
		try {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			member = dao.emailChk(email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return member;
		
	}
}
