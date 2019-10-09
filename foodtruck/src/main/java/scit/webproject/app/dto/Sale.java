package scit.webproject.app.dto;

import lombok.Data;

@Data
public class Sale {
	private String saleSeq;
	private String payDate;
	private String menu_Id;
	private String menuName;
	private String menu_Price;
	private int menuCount;
	private String tableNo;
	private int cashValue;
	private int cardValue;
	private String pointValue;
	private String memberNo;
	private String memberName;
	
	
}
