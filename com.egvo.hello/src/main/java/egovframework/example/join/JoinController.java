package egovframework.example.join;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
	
	@RequestMapping(value = "join.do")
	public String join() throws Exception {

		return "join/join.tiles";
	}
	
	@RequestMapping(value = "lic-join.do")
	public String lic_join() throws Exception {

		return "join/lic-join.tiles";
	}
}
