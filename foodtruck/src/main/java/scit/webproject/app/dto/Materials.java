package scit.webproject.app.dto;

import lombok.Data;

@Data
public class Materials {
	private String cm_id;
	private String cm_name; 
	private String cm_unit;
	private int cm_amount;
	private String cm_inputdate;
	private String cm_outdate;
	private String cm_expdate;
	private String cm_origin;
	private int cm_saftyStock;
	private int cm_price;
}
