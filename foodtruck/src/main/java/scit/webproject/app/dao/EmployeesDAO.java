package scit.webproject.app.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import scit.webproject.app.dto.Employees;


@Repository
public class EmployeesDAO {
	@Autowired
	SqlSession sqlsession;
	
	public int insertEmployees(Employees emp){
		int result=0;
		EmployeesMapper mapper = sqlsession.getMapper(EmployeesMapper.class);
		try {
			result=mapper.insertEmployees(emp);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}
	public Employees login(Employees emp){
		Employees result=null;
		EmployeesMapper mapper = sqlsession.getMapper(EmployeesMapper.class);
		try {
			result=mapper.login(emp);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}

}
