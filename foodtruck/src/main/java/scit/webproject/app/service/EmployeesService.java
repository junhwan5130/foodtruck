package scit.webproject.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import scit.webproject.app.dao.EmployeesDAO;
import scit.webproject.app.dto.Employees;

@Service
public class EmployeesService {
	@Autowired
	EmployeesDAO edao;
	
	public int inertEmployees(Employees emp){
		return edao.insertEmployees(emp);
	}
	public Employees login(Employees emp){
		return edao.login(emp);
	}
}
