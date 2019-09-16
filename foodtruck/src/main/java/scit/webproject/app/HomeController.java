package scit.webproject.app;

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
	
	@RequestMapping(value = "/500", method = RequestMethod.GET)
	public String go505() {
		
		return "500";
	}
	
	@RequestMapping(value = "/blank-page", method = RequestMethod.GET)
	public String blankpage() {
		
		return "blank-page";
	}
	
	@RequestMapping(value = "/buttons", method = RequestMethod.GET)
	public String buttons() {
		
		return "buttons";
	}
	
	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts() {
		
		return "charts";
	}
	
	@RequestMapping(value = "/compose", method = RequestMethod.GET)
	public String compose() {
		
		return "compose";
	}
	
	@RequestMapping(value = "/forms", method = RequestMethod.GET)
	public String forms() {
		
		return "forms";
	}
	
	@RequestMapping(value = "/general", method = RequestMethod.GET)
	public String general() {
		
		return "general";
	}
	
	@RequestMapping(value = "/grids", method = RequestMethod.GET)
	public String grids() {
		
		return "grids";
	}
	
	@RequestMapping(value = "/icons", method = RequestMethod.GET)
	public String icons() {
		
		return "icons";
	}
	
	@RequestMapping(value = "/inbox", method = RequestMethod.GET)
	public String inbox() {
		
		return "inbox";
	}
	
	@RequestMapping(value = "/media", method = RequestMethod.GET)
	public String media() {
		
		return "media";
	}
	
	@RequestMapping(value = "/tables", method = RequestMethod.GET)
	public String tables() {
		
		return "tables";
	}
	
	@RequestMapping(value = "/typography", method = RequestMethod.GET)
	public String typography() {
		
		return "typography";
	}
	
	@RequestMapping(value = "/validation", method = RequestMethod.GET)
	public String validation() {
		
		return "validation";
	}
	
	@RequestMapping(value = "/widgets", method = RequestMethod.GET)
	public String widgets() {
		
		return "widgets";
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
