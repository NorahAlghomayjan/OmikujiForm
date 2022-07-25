package com.norah.omikujiform.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class HomeController {
	
	@RequestMapping("")
	public String main() {
		return "index.jsp";
	}
	
	@PostMapping("/result")
	public String result( HttpSession session,
						@RequestParam("selectedNum") int selectedNum,
						@RequestParam("city")String city,
						@RequestParam("person")String person,
						@RequestParam("hobby")String hobby,
						@RequestParam("living")String living,
						@RequestParam("nice")String nice) {
		String output = "In "+ selectedNum + " years, you will live in " + city + " with " + person + " as your roomate, you will " + hobby +
				" for a living. \n The next time you see a " + living + ", you will have a good luck. \n Also,"+nice;
		session.setAttribute("output", output);
		return "redirect:/omikuji/show";
	}

	@RequestMapping("/show")
	public String show(Model model, HttpSession session){
		String output = (String) session.getAttribute("output");
		model.addAttribute("output", output);
		return "result.jsp";
	}

}
