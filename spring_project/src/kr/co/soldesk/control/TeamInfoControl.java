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
import kr.co.soldesk.persistence.TeamInfoImple;

@Controller
public class TeamInfoControl {
	
	@Autowired
	DAO teamInfoDAO;	
	
	@Autowired
	TeamInfoImple teamInfoImple;
	
	public void setDao(DAO teamInfoDAO) {
		this.teamInfoDAO = teamInfoDAO;
	}

	
	@RequestMapping(value="/teamInfoList")
	public String list(Model model) {
		
		List<UserInfoDTO> list = teamInfoDAO.selectAll();
		
		model.addAttribute("teamlist", list);
		
		return "teamList";		
	}
	
	
	@RequestMapping("/teamInsert")
	public String processStep1() {
		return "teamInsertForm";
	}
	

	
	@RequestMapping("/teamInsertOk")
	public String processStep2(@ModelAttribute TeamInfoDTO teamInfoDTO) {
		
		teamInfoDAO.insertOne(teamInfoDTO);
		
		return "teamInsertOk";
	}
	
	
	@RequestMapping("/teamDetail")
	public String detail(HttpServletRequest req,Model model) {

		                     
	 model.addAttribute("teamDetail", teamInfoDAO.selectOne(Integer.parseInt(req.getParameter("teamno"))));

		return "teamDetail";
	}
	

	
	@RequestMapping("/myTeamList")
	public String myteam(HttpServletRequest req,Model model) {
		UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");

		//팀인포 가져오기 
		List<TeamInfoDTO> list = teamInfoImple.myTeamInfo(dto.getUser_num());
		
		model.addAttribute("myTeamList", list);
		
		return "myTeamList";
	}
	
	
	@RequestMapping("/myTeamDetail")
	public String myTeamDetail(HttpServletRequest req,Model model) {
		
		TeamInfoDTO dto = (TeamInfoDTO) teamInfoDAO.selectOne( Integer.parseInt(req.getParameter("team_num")));
		
		model.addAttribute("detail", dto);
		
		return "myTeamDetail";
	}
	
	
	
}
