package scit.webproject.app.repo;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import scit.webproject.app.util.PageNavigator;
import scit.webproject.app.dto.Sale;

@Repository
public class SaleRepository {
	@Autowired
	SqlSession session;
	
	public int insertSale(List<Sale> saleList) {
		int result = 0;
		
		SaleMapper mapper = session.getMapper(SaleMapper.class);
		try {
			result = mapper.insertSale(saleList);
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}

	public Sale selectSaleMenu(Sale sale) {
		// TODO Auto-generated method stub
		Sale result = null;
		SaleMapper mapper = session.getMapper(SaleMapper.class);
		try {
			result = mapper.selectSaleMenu(sale);
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}
	
	public ArrayList<Sale> selectAllSale(String searchWord, PageNavigator navi) {
		// TODO Auto-generated method stub
		ArrayList<Sale> sList = new ArrayList<Sale>();
		SaleMapper mapper = session.getMapper(SaleMapper.class);
		try {

			RowBounds rb = new RowBounds(navi.getStartRecord(), navi.getCountPerPage());

			sList = mapper.selectAllSale(searchWord, rb);

		} catch (Exception e) {
			e.printStackTrace();
			return sList;
		}
		return sList;
	}
	
	public Sale deleteSaleMenu(Sale sale) {
		// TODO Auto-generated method stub
		Sale result = null;
		SaleMapper mapper = session.getMapper(SaleMapper.class);
		try {
			result = mapper.deleteSaleMenu(sale);
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
			return result;
		}
		return result;
	}

	public int selectCount(String searchWord) {
		int result = 0;

		SaleMapper mapper = session.getMapper(SaleMapper.class);
		try {
			result = mapper.selectCount(searchWord);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
}
