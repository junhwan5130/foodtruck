package scit.webproject.app;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import scit.webproject.app.util.PageNavigator;
import scit.webproject.app.dto.Menu;
import scit.webproject.app.dto.Sale;
import scit.webproject.app.repo.SaleRepository;

@Controller
public class SaleController {
	@Autowired
	SaleRepository repo;
	
	final static int COUNTPERPAGE = 20;
	final static int PAGEPERGROUP = 10;
	
	@RequestMapping(value = "/SaleTempRegist", method = RequestMethod.POST)
	@ResponseBody
	public Sale insertTempSale(Sale sale) {
		System.out.println(sale);
		return sale;
	}
	
	@RequestMapping(value = "/selectSaleMenu", method = RequestMethod.GET)
	public @ResponseBody Map<String,Object> selectSaleMenu(Sale sale) {
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		System.out.println(repo.selectSaleMenu(sale).getMenu_Id() +" "+ repo.selectSaleMenu(sale).getMenu_Price());
		resultMap.put("menuId", repo.selectSaleMenu(sale).getMenu_Id());
		resultMap.put("menuPrice", repo.selectSaleMenu(sale).getMenu_Price());
		
		return resultMap;
	}
	
	@RequestMapping(value = "/SaleDBRegist", method = RequestMethod.POST)
	public void insertDBSale(@RequestBody String[] arrToSend) throws Exception {
		Sale sale = new Sale();
		List<Sale> list = new ArrayList<Sale>();
		for(int i=1 ;i<arrToSend.length; i=i+6) {
			sale.setMemberNo("test1");
			sale.setMemberName("test1");
			sale.setTableNo("01");
			sale.setPointValue("100");
			sale.setMenuName(arrToSend[i]);
			sale.setMenu_Id(arrToSend[i+1]);
			sale.setMenuCount(Integer.parseInt(arrToSend[i+2]));
			sale.setPayDate(arrToSend[i+3]);
			sale.setCashValue(Integer.parseInt(arrToSend[i+4]));
			sale.setCardValue(Integer.parseInt(arrToSend[i+5]));
			list.add(sale);
		}
		System.out.println(list);
		repo.insertSale(list);
	}
	

	@RequestMapping(value = "/selectAllSale", method = RequestMethod.GET)
	public String selectAllMenu(Model model, @RequestParam(value = "page", defaultValue = "1") int page, String searchWord) {
		
		PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, repo.selectCount(searchWord));
		model.addAttribute("sList", repo.selectAllSale(searchWord, navi));
		model.addAttribute("navi", navi);
		model.addAttribute("searchWord", searchWord);
		
		return "SaleSelect";
	}

}
