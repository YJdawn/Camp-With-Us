package team.project.camp.camp.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping
public class CampListController {

	@GetMapping("/campList")
	public String campList(  
				@RequestParam(value = "loc", required = false , defaultValue = "") String loc,
				@RequestParam(value = "theme", required = false , defaultValue = "") String theme,
				Model model
			) {
		
		model.addAttribute("loc", loc);
		model.addAttribute("theme", theme);
		
		return "common/campList";
	}
}
