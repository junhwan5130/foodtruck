package scit.webproject.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import scit.webproject.app.dao.MenuDAO;
import scit.webproject.app.dto.Menu;

@Service
public class MenuService {
	@Autowired
	MenuDAO mdao;
	
	public int insertMenu(Menu mn){
		return mdao.insertMenu(mn);
	};
	public List<Menu> selectAllMenu(){
		return mdao.selectAllMenu();
	}

}
