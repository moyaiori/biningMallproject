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
//			list = sqlSession.selectList("kr.or.kosta.ems.employee.dao.selectAll");
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			list = dao.getAll();
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	@Override
	public void insert(Member member) throws RuntimeException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
//			sqlSession.insert("kr.or.kosta.ems.employee.dao.insertEmployee", employee);
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
//			sqlSession.delete("kr.or.kosta.ems.employee.dao.deleteEmployee", employeeId);
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
	
	// 테스트 메인
	public static void main(String[] args) throws Exception {
		
		DaoFactory factory = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		MemberDao dao = (MemberDao)factory.getDao(MybatisMemberDao.class);
		
//		List<Employee> list = dao.getAll();
//		for (Employee employee : list) {
//			System.out.println(employee);
//		}
		
//		System.out.println(dao.get(209));
		
//		System.out.println(dao.search("이"));

//		Employee emp = new Employee();
//		emp.setFirstName("KiJung");
//		emp.setLastName("Kims");
//		emp.setEmail("bangry2@gmail.com");
//		emp.setPhoneNumber("010.9179.87087");
//		emp.setHireDate("2014-5-5");
//		emp.setJobId("IT_PROG");
//		emp.setSalary(50000);
//		emp.setManagerId(150);
//		emp.setDepartmentId(60);
//		
//		dao.insert(emp);

//		Employee emp = new Employee();
//		emp.setId(209);
//		emp.setFirstName("광용");
//		emp.setLastName("이");
//		emp.setSalary(75500);
//		emp.setEmail("kosta12@kosta.com");
//		
//		dao.update(emp);
		
//		dao.delete(209);
	}

}
