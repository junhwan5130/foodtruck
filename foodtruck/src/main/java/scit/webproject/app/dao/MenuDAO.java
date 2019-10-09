package scit.webproject.app.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import scit.webproject.app.dto.Employees;
import scit.webproject.app.dto.Menu;

@Repository
public class MenuDAO {
	@Autowired
	SqlSession sqlsession;
	
	public int insertMenu(Menu mn){
		int result=0;
		MenuMapper mapper = sqlsession.getMapper(MenuMapper.class);
		try {
			result=mapper.insertMenu(mn);
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}
	public List<Menu> selectAllMenu(){
		List<Menu> result = new ArrayList<Menu>();
		MenuMapper mapper = sqlsession.getMapper(MenuMapper.class);
		try {
			result=mapper.selectAllMenu();
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}

}
