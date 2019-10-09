package scit.webproject.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import scit.webproject.app.dto.Employees;
import scit.webproject.app.service.EmployeesService;

@Controller
public class EmployeesController {

	@Autowired
	EmployeesService eservice;
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String insertEmployees(Employees emp){
		eservice.inertEmployees(emp);
		return "redirect:/";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Employees emp, HttpSession session, Model model){
		Employees result =eservice.login(emp);
		session.setAttribute("loginId", result.getEmp_id());
		model.addAttribute("username", result.getEmp_name());
		model.addAttribute("userposition", result.getEmp_position());
		return "redirect:/index";
	}
	
	@RequestMapping(value="/logOut", method=RequestMethod.GET)
	public String logOut(HttpSession session){
		session.invalidate();		
		return "login";
	}
}
