package egovframework.example.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value = "login.do")
	public String initMain() throws Exception {

		return "login/login.tiles";
	}
}
