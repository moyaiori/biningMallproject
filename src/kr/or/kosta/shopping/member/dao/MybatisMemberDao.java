package kr.or.kosta.shopping.member.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.domain.Member;

/**
 * Mybatis를 이용한 디비 연동
 * @author AS
 */
public class MybatisMemberDao implements MemberDao {
	
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
			sqlSession.commit();
		} catch (Exception e) {
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
			dao.delete(employeeId);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}		
	}
	@Override
	public Member isMember(String email) throws Exception {
		return null;
	}
}
