package scit.webproject.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import scit.webproject.app.dto.Menu;
import scit.webproject.app.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	MenuService mnservice;
	
	@RequestMapping(value="/insertMenu", method=RequestMethod.POST)
	public String insertMenu(Menu mn){
		
		System.out.println(mn);
		mnservice.insertMenu(mn);
		return "redirect:/Menu";
	}
	@RequestMapping(value="/Menu", method=RequestMethod.GET)
	public String menu(Model model){
		List<Menu> list = mnservice.selectAllMenu();
		model.addAttribute("list", list);
		return "Menu";
	}
	@RequestMapping(value="/MenuRegist", method=RequestMethod.GET)
	public String menuRegist(){
		
		return "MenuRegist";
	}
}
