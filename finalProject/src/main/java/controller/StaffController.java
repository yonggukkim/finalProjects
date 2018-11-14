package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StaffController {
	
	@RequestMapping(value="/product", method = RequestMethod.GET)
	public String handleStep1(Model model) {
		return "product/productinsert";
	}
}
