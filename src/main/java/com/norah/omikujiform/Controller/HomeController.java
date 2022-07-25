package com.norah.omikujiform.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String test() {
		return "index.jsp";
	}
	
	@PostMapping("/show")
	public String result(Model model,
						@RequestParam("selectedNum") int selectedNum,
						@RequestParam("city")String city,
						@RequestParam("person")String person,
						@RequestParam("hobby")String hobby,
						@RequestParam("living")String living,
						@RequestParam("nice")String nice) {
		String output = "In "+ selectedNum + " years, you will live in " + city + " with " + person + " as your roomate, you will " + hobby +
				" for a living. \n The next time you see a " + living + ", you will have a good luck. \n Also,"+nice;
		model.addAttribute("output", output);
		return "result.jsp";
	}

}
