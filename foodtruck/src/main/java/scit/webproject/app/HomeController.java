package scit.webproject.app;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
				
		return "index";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
				
		return "signup";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String go404() {
		
		return "404";
	}
	
	@RequestMapping(value = "crawling.do")
	public String crawling() throws Exception {
		
		String url = "https://sports.news.naver.com/kbaseball/index.nhn";
		System.out.println("==============================");
		System.out.println("url : " + url);
		
		Document doc = Jsoup.connect(url).get();
		
		System.out.println(doc.toString());
		
		
		return "{\"1\":\"1\"}";
	}
}
