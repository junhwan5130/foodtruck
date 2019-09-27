package scit.webproject.app.repo;

import java.util.Map;

import scit.webproject.app.dto.Menu;
import scit.webproject.app.dto.Sale;

public interface SaleMapper {
	
	public int insertSale(Sale sale);
	public Sale selectSaleMenu(Sale sale);
	
}
