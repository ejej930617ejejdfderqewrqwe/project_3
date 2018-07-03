package kr.co.soldesk.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.TeamRegDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;

@SessionAttributes("teamreg")
@Controller
public class TeamRegControl {
	
	@Autowired
	DAO teamRegDAO;	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	
	@Autowired
	DAO teamInfoDAO;
	
	public void setDao(DAO teamRegDAO) {
		this.teamRegDAO = teamRegDAO;
		
	}
	
	
	
	
	
	public void setTeamInfoDAO(DAO teamInfoDAO) {
		this.teamInfoDAO = teamInfoDAO;
	}





	@RequestMapping("/teamReg")
	public String processStep1(Model model, HttpServletRequest req) {
	
		int team_num = Integer.parseInt(req.getParameter("teamno"));
		UserInfoDTO userdto = (UserInfoDTO) req.getSession().getAttribute("loginUser");
		
		System.out.println(userdto.getUser_num());
		
		TeamRegDTO dto = new TeamRegDTO();
		
		dto.setTeam_num(team_num);
		dto.setTeamreg_event(3);
		dto.setUser_num(userdto.getUser_num());
		
		model.addAttribute("teamreg", dto);
		
		return "teamRegForm";
	}
	

	
	@RequestMapping("/teamRegOk")
	public String processStep2(HttpServletRequest req,Model model) {
		
		String position = req.getParameter("teamreg_position");
		TeamRegDTO regdto = (TeamRegDTO) req.getSession().getAttribute("teamreg");
		 
		 regdto.setTeamreg_positon(position);
		
		 teamRegDAO.insertOne(regdto);
		 
		
		TeamInfoDTO dto = (TeamInfoDTO) teamInfoDAO.selectOne(regdto.getTeam_num());
		model.addAttribute("myteam", dto);
		
		return "teamRegOk";
	}
	

	
	
	
}
