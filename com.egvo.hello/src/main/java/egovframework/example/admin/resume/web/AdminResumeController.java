package egovframework.example.admin.resume.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminResumeController {

	@RequestMapping("resume/adminResume")
	private String adminResume() throws Exception {
		
		return "admin/resume/adminResume";
	}
}
