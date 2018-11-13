package service;

import model.Member;

public class MemberService {
	public Integer insertComment(Member member) {
		// 디버깅코드
		System.out.println("service"+ member.getCommentNo());
		System.out.println("service"+ member.getUserId());
		
		return memberRepository.insertComment(member);
	}
}
