package scit.webproject.app.repo;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import scit.webproject.app.dto.Menu;
import scit.webproject.app.dto.Sale;

@Repository
public class SaleRepository {
	@Autowired
	SqlSession session;
	
	public int insertSale(Sale sale) {
		int result = 0;
		
		SaleMapper mapper = session.getMapper(SaleMapper.class);
		try {
			result = mapper.insertSale(sale);
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
}
