package scit.webproject.app.dto;

import lombok.Data;

@Data
public class Employees {
	private String emp_id;
    private String emp_pwd;
	private String emp_name;
	private String emp_address;
	private String emp_phone;
	private String emp_bankcode;
	private String emp_accountnum;
	private String emp_position;
	private int emp_salary;
	private String emp_join;
	private String emp_leave;
}
