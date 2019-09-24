package scit.webproject.app.controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

//commit test
@Controller
public class HomeController {
	
	//basic goto menu
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
				
		return "login1";
	}

	

}
