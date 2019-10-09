package scit.webproject.app.dao;

import scit.webproject.app.dto.Employees;

public interface EmployeesMapper {
	
	public int insertEmployees(Employees emp);
	public Employees login(Employees emp);

}
