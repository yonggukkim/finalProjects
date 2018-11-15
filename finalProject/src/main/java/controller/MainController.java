package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Continent;
import model.Country;
import service.CartegoryService;

@Controller
public class MainController {
	
	@Autowired
	CartegoryService cartegoryService;
	// 메인페이지 로딩
	@RequestMapping(value = "/mainpage1", method = RequestMethod.GET)
	public String mainPage(Model model) {
		return "mainPage/mainPage";
	}

	// 자유여행 메인페이지로 이동
	@RequestMapping(value = "/selfMain", method = RequestMethod.GET)
	public String selfMain(Model model) {
		return "self/selfMain";
	}

	@RequestMapping(value="/continent", method=RequestMethod.GET)
	public String continent(Model model) {
		System.out.println("controller1");
		cartegoryService.continentSelect(model);
		return "cartegory/continent";
	}
	@RequestMapping(value="/country", method=RequestMethod.POST)
	public String country(Continent continent, Model model){
		System.out.println("controller2 "+continent.getContinentName());
		cartegoryService.countrySelect(continent, model);
		return "cartegory/country";
	}
	@RequestMapping(value="/city", method=RequestMethod.POST)
	public String city(Country country, Model model) {
		System.out.println("controller3 "+country.getCountryNum());
		System.out.println("controller3 "+country.getCountryName());
		cartegoryService.citySelect(country, model);
		return "cartegory/city";
	}
}
