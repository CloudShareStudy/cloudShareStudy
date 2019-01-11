package egovframework.example.admin.intro.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminIntroController {

	@RequestMapping("intro/adminIntro")
	private String adminIntro() throws Exception {
		
		return"admin/intro/adminIntro";
	}
}
