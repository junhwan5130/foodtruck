package scit.webproject.app.dto;

import lombok.Data;

@Data
public class Menu {
	
	private String menu_id;
    private String menu_name;
    private int menu_price;
    private String menu_ingredients;
    private String menu_regdate;
    private String menu_updatedate;

}
