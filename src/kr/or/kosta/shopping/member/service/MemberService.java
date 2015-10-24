package kr.or.kosta.shopping.member.service;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.common.dao.DaoFactory;
import kr.or.kosta.shopping.common.dao.DaoFactory.DaoFactoryType;
import kr.or.kosta.shopping.member.dao.MemberDao;
import kr.or.kosta.shopping.member.dao.MybatisMemberDao;
import kr.or.kosta.shopping.member.domain.Member;

public class MemberService {
	private static MemberService instance;
	MemberDao memberDao;
	
	//throws RuntimeException
	private MemberService() throws Exception{
		DaoFactory dao = DaoFactory.getInstance(DaoFactoryType.MYBATIS);
		memberDao = (MybatisMemberDao)dao.getDao(MybatisMemberDao.class);
	}
	
	public static MemberService getInstance(){
		if(instance == null){
				synchronized (MemberService.class){
				try {
					instance = new MemberService();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return instance;
	}
	
	/** 회원등록 */
	public void insert(Member member) throws RuntimeException{
		try {
			memberDao.insert(member);
		} catch (Exception e) {
			throw new RuntimeException(e.toString());
		}
	}
	
	/** 회원목록 */
	public List<Member> list() throws RuntimeException{
		List<Member> list = null;
		try {
			list = memberDao.getAll();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return list;
	}
	
	/** 회원 여부 반환*/
	public Member login(String id, String passwd) throws RuntimeException{
		Member member = null;
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("memberId", id);
		data.put("passwd", passwd);
		try {
			member = memberDao.login(data);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return member;
	}
	
	
	public Member idChk(String id) throws RuntimeException {
		Member member = null;
		try {
			member = memberDao.idChk(id);
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return member;
	}
	
	public Member emailChk(String email) throws RuntimeException {
			Member member = null;
			try {
				member = memberDao.emailChk(email);
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
			return member;
	}
	
	public Member searchId(HashMap<String, Object> data) throws RuntimeException {
		Member member = null;
		try {
			member = memberDao.searchId(data);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return member;
	}
	
	public Member searchPass(HashMap<String, Object> data) throws RuntimeException {
		Member member = null;
		try {
			member = memberDao.searchPass(data);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return member;
	}

}
