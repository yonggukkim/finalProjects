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
		System.out.println("service"+ member.getMemberNum());
		System.out.println("service"+ member.getMemberId());
		
		return memberRepository.insertMember(member);
	}
	public List<Member> selectMember(Member member) {
		System.out.println("service" + member.getMemberNum());
		return memberRepository.selectMemberByCondition(member);
	}
	public Integer updateMember(Member member) {
		System.out.println("service"+ member.getMemberNum());
		System.out.println("service"+ member.getMemberId());
		
		return memberRepository.updateMember(member);
	}
	public Integer deleteMember(String memberNum) {
		System.out.println("service"+ memberNum);
		
		return memberRepository.deleteMember(memberNum);
	}
	public void ajaxSelect(HttpServletRequest request, Model model) {
		Long result = Long.parseLong(request.getParameter("n"));
		System.out.println("service"+result);
		List list = memberRepository.ajaxSelect(result);
		model.addAttribute("list",list);
		model.addAttribute("result",result);
	}
}