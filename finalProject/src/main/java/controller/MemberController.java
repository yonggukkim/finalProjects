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
	
	@RequestMapping(value="/member_insert", method=RequestMethod.GET)
	public String handleStep1(Model model) {
		model.addAttribute("member", new Member());
		return "member/join";
	}
	@RequestMapping(value="/member_insert", method=RequestMethod.POST)
	public String handleStep1(Member member, Model model) {
		Integer result = memberService.insertMember(member);
		if(result > 0) {
			model.addAttribute("member", member);
			return "redirect:/mainpage1";
		}else {
			return "redirect:/mainpage1";
		}
		
	}
	@RequestMapping(value="/member_select", method=RequestMethod.POST)
	public String handleStep2(Member member, Model model) {
		System.out.println("controller" + member.getMemberNum());
		List<Member> result = memberService.selectMember(member);
		if(result != null) {
			model.addAttribute("result", result);
			return "jsp/";
		}else {
			return "redirect:/form.do";
		}
		
	}
	@RequestMapping(value="/comment_update", method=RequestMethod.POST)
	public String handleStep3(Member member, Model model) {
		System.out.println("controller" + member.getMemberNum());
		System.out.println("controller" + member.getMemberId());
		Integer result = memberService.updateMember(member);
		if(result > 0) {
			model.addAttribute("member", member);
			return "jsp/member_update";
		}else {
			return "redirect:/form.do";
		}
	}
	@RequestMapping(value="/member_delete", method=RequestMethod.POST)
	public String handleStep4(Member member, Model model) {
		System.out.println("controller" + member.getMemberNum());
		Integer result = memberService.deleteMember(member.getMemberNum());
		model.addAttribute("result", result);
		return "jsp/comment_delete";
	}
	@RequestMapping(value="/ajax.do", method=RequestMethod.GET)
	public String Ajaxmain(Model model) {
		return "ajax/ajaxmain";
	}
	@RequestMapping(value="/main1.do", method=RequestMethod.GET)
	public String Ajaxmain1(Model model) {
		return "ajax/ajaxmain1";
	}
	@RequestMapping(value="/main2.do", method=RequestMethod.GET)
	public String Ajaxmain2(Model model) {
		return "ajax/ajaxmain2";
	}
	@RequestMapping(value="/ajax.do", method=RequestMethod.POST)
	public String handleStep(HttpServletRequest request, Model model) {
		System.out.println("1");
		System.out.println(request.getParameter("n"));
		memberService.ajaxSelect(request, model);
		return "ajax/ajaxhtml";
	}
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(Model model) {
		return "login/loginForm";
	}
}