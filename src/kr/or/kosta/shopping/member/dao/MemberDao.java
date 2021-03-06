package kr.or.kosta.shopping.member.dao;

import java.util.HashMap;
import java.util.List;

import kr.or.kosta.shopping.member.domain.Member;

/**
 * 회원 관련 영속성 처리 표준 규약
 * @author 유안상
 */
public interface MemberDao {
	
	/** 회원 전체 목록 조회 */
	public List<Member> getAll() throws RuntimeException;
	
	/** 회원 등록 */
	public void insert(Member member) throws RuntimeException;
	
	/** 회원 정보 수정 */
	public void update(Member member) throws RuntimeException;
	
	/** 회원 정보 삭제 */
	public void delete(int memberId) throws RuntimeException;
	
	/** 회원 확인 */
	public Member isMember(String email) throws Exception;
	
	/** 회원 로그인 */
	public Member login(HashMap<String, Object> data) throws Exception;

	/*회원 가입시 , 아이디 중복 검사.*/
	public Member idChk(String id) throws RuntimeException;
	
	/*회원 가입시 , 이메일 중복 검사.*/
	public Member emailChk(String email) throws RuntimeException;
	
	/* 이메일과 이름으로 아이디를 찾는다. */
	public Member searchId(HashMap<String, Object> data) throws RuntimeException;
	
	/* 이메일과 아이디로 비밀번호를 찾는다. */
	public Member searchPass(HashMap<String, Object> data) throws RuntimeException;
	
	/* 아이디를 통해서 계정정보 가져오기 */
	public Member getMemberInfo(String memberId) throws RuntimeException;
	
	/* 회원정보 수정 */
	public void updateMemberInfo(Member member) throws RuntimeException;
	
	/* 주문시 회원의 포인트 변경*/
	public void updatePoint(HashMap<String, Object> data) throws RuntimeException;
	
	public int getMemberPoint(String memberId) throws RuntimeException;
}









