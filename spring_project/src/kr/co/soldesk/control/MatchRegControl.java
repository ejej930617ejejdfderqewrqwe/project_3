package kr.co.soldesk.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.domain.MatchRegDTO;
import kr.co.soldesk.persistence.DAO;

@Controller
public class MatchRegControl {
	@Autowired
	DAO matchRegDAO;
	
	public void setMatchRegDAO(DAO match_RegDAO) {
		matchRegDAO = match_RegDAO;
	}

	@RequestMapping("/matchRegForm")
	public String processStep1() {
		return "matchRegForm";
	}
	
	@RequestMapping("/matchRegOk")
	public String processStep2(@ModelAttribute MatchRegDTO matchRegDTO) {
		matchRegDAO.insertOne(matchRegDTO);
		
		return "matchRegOk";
	}
	
}
