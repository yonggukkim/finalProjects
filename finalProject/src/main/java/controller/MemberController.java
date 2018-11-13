package controller;

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
	
	
	@RequestMapping(value="/pkgmain", method=RequestMethod.GET)
	public String handleStep1(Model model) {
		return "pkg/pkgmain";
		
	}
	@RequestMapping(value="/map", method=RequestMethod.GET)
	public String handleStep2(Model model) {
		return "map";
		
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String handleStep3(Model model) {
		return "member/login";
	}
	
	@RequestMapping(value="/memberform", method=RequestMethod.POST)
	public String handleStep1(Member member, Model model) {
		Integer result = memberService.insertComment(member);
		if(result > 0) {
			model.addAttribute("member", member);
			return "jsp/comment_insert";
		}else {
			return "redirect:/form.do";
		}
	}
}
