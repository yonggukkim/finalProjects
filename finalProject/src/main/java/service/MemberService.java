package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.Member;
import repository.MemberSessionRepository;

@Service
public class MemberService {
	@Autowired
	private MemberSessionRepository memberRepository;

	public Integer insertMember(Member member) {
		// 디버깅코드
		System.out.println("getMemberId : "+ member.getMemberId());
		
		return memberRepository.insertMember(member);
	}

}