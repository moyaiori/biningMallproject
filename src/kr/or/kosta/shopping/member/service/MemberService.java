package kr.or.kosta.shopping.member.service;

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
}
