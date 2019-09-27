package scit.webproject.app.dto;

import lombok.Data;

@Data
public class Menu {
	private String menuId;
	private String menuName;
	private String menuPrice;
	private String customerId;
	private String cmQuantity;
	private String menuRegDate;
	private String menuUpDate;
}
