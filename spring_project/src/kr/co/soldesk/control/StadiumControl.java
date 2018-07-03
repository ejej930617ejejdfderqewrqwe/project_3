package kr.co.soldesk.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;

@Controller
public class StadiumControl {
	
	@Autowired
	DAO stadiumDAO;	
	
	public void setDao(DAO stadiumDAO) {
		this.stadiumDAO = stadiumDAO;
	}

	
	@RequestMapping(value="/stadiumList")
	public String list(Model model) {
		
		List<UserInfoDTO> list = stadiumDAO.selectAll();
		
		model.addAttribute("stadiumlist", list);
		
		return "stadiumList";		
	}
	
	


	
	
	@RequestMapping("/stadiumDetail")
	public String detail(HttpServletRequest req,Model model) {

		                     
	 model.addAttribute("boardDetail", stadiumDAO.selectOne(Integer.parseInt(req.getParameter("no"))));

		return "stadiumDetail";
	}
	

}
