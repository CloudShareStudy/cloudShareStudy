package egovframework.example.admin.home.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class adminHomeController {

	@RequestMapping("adminHome/home.do")
	private String adminHome() throws Exception {
		
		return "admin/home/home";
	}
}
