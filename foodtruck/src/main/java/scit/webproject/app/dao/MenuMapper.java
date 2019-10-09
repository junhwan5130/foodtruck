package scit.webproject.app.dao;

import java.util.List;

import scit.webproject.app.dto.Menu;

public interface MenuMapper {
	public int insertMenu(Menu mn);
	public List<Menu> selectAllMenu();
}
