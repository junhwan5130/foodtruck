package scit.webproject.app.repo;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;

import scit.webproject.app.dto.Sale;

public interface SaleMapper {
	
	public int insertSale(List<Sale> saleList);	//Insert
	public Sale selectSaleMenu(Sale sale);	//Mapper for Ajax
	public ArrayList<Sale> selectAllSale(String searchWord, RowBounds rb);//Select All Sale Menu
	public Sale deleteSaleMenu(Sale sale);	//Delete Sale Menu
	public int selectCount(String searchWord);
	
}
