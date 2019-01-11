package egovframework.example.admin.training.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminTrainingController {

	@RequestMapping("training/adminTraining")
	private String adminTraining() throws Exception {
		
		return "admin/training/adminTraining";
	}
}
