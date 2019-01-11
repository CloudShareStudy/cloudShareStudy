package egovframework.example.admin.adminMain.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainController {

	@RequestMapping(value = "adminMain.do")
	private String adminMain() throws Exception{
		
		return "adminMain/adminMain.admin_tiles";
	}
}
