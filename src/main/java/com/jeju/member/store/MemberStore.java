package com.jeju.member.store;



import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import com.jeju.member.domain.Member;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;

public interface MemberStore {
	// selectLoginMember
	public Member selectLoginMember(SqlSession session, Member member);
	// checkIdDuplicate
	public int checkDupId(SqlSession session, String memberId);
	// checkEmailDuplicate
	public int checkDupEmail(SqlSession session, String memberEmail);
	// selectOneById
	public Member selectOneById(SqlSession session, String memberId);
	// insertMember
	public int insertMember(SqlSession session, Member member);
	// updateMember
	public int updateMember(SqlSession session, Member member);
	// deleteMember
	public int deleteMember(SqlSession session, String memberId);

	// 관리자 전체멤버 조회
	public List<Member> showAllMember(SqlSession session);

	// 관리자 회원탈퇴
    void removeAdminMember(SqlSessionTemplate session, String memberId);

	public Member selectMemberInfo(SqlSessionTemplate session, String memberId);

}
