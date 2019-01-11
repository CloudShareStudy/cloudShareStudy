package egovframework.example.admin.pofol.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPofolController {

	@RequestMapping("pofol/adminPofol")
	private String adminPofol() throws Exception {
		
		return "admin/portfolio/adminPofol";
	}
}
