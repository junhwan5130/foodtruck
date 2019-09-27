package scit.webproject.app;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import scit.webproject.app.dto.Menu;
import scit.webproject.app.dto.Sale;
import scit.webproject.app.repo.SaleRepository;

@Controller
public class SaleController {
	
	@Autowired
	SaleRepository repo;
	//basic goto menu
	@RequestMapping(value = "/SaleRegist", method = RequestMethod.POST)
	public String insertSale(Sale sale, Model model ) {
		
		sale.setMemberNo("test1");
		sale.setMemberName("test1");
		sale.setTableNo("01");
		sale.setPointValue("100");
		
		repo.insertSale(sale);
		
		System.out.println(sale.getCardValue());
		
		return "SaleRegist";
	}
	
	@RequestMapping(value = "/selectSaleMenu", method = RequestMethod.GET)
	public @ResponseBody Map<String,Object> selectSaleMenu(Sale sale) {
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		System.out.println(repo.selectSaleMenu(sale).getMenu_Id() +" "+ repo.selectSaleMenu(sale).getMenu_Price());
		resultMap.put("menuId", repo.selectSaleMenu(sale).getMenu_Id());
		resultMap.put("menuPrice", repo.selectSaleMenu(sale).getMenu_Price());
		
		return resultMap;
	}


}
