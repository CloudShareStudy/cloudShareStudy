package egovframework.example.admin.share.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminShareController {

	@RequestMapping("share/adminShare")
	private String adminShare()throws Exception{
		
		return "admin/share/adminShare";
	}
}
