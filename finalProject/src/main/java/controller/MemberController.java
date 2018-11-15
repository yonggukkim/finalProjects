package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Member;
import service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/form.do", method=RequestMethod.GET)
	public String handleStep1(Model model) {
		model.addAttribute("member", new Member());
		return "member/join";
	}
	@RequestMapping(value="/member_insert", method=RequestMethod.POST)
	public String handleStep1(Member member, Model model) {
		Integer result = memberService.insertMember(member);
		if(result > 0) {
			model.addAttribute("member", member);
			return "member/member_insert";
		}else {
			return "redirect:/form.do";
		}
	}
}