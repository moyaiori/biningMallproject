package kr.or.kosta.shopping.member.dao;

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
}









