package kr.co.soldesk.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.soldesk.domain.LoginVO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.DAO;
import kr.co.soldesk.persistence.UserDAO;
import kr.co.soldesk.persistence.UserInfoDAO;


@SessionAttributes("loginUser")
@Controller
public class UserInfoControl {
	
	
	@Autowired
	DAO userDAO;
	
	@Autowired
	UserDAO userDao;
	
	
	public void setDao(DAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(value="/userInfoList")
	public String list(Model model) {
		
		List<UserInfoDTO> list = userDAO.selectAll();
		
		model.addAttribute("userlist", list);
		
		return "list";		
	}
	
	@RequestMapping("/insert")
	public String processStep1() {
		return "insertForm";
	}
	

	
	@RequestMapping("/insertOk")
	public String processStep2(@ModelAttribute UserInfoDTO userInfoDTO) {
		
		userDAO.insertOne(userInfoDTO);
		
		return "insertOk";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	

	
	
	
	@RequestMapping("/loginOk")
	public String loginOk(HttpServletRequest req,Model model){
		
		//이미 세션에 정보가 있으면 작동하는 부분
		if(req.getSession().getAttribute("loginUser") != null) {
			
			return "boardList";
		}
		
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		//System.out.println(id +"  "+pw);
		
		
		if(id != null && pw != null) {
		
			UserInfoDTO dto = (UserInfoDTO) userDao.selectOneById(id);
			
			if(dto.getUser_pw().equals(pw)) {
				//로그인 성공
				
				model.addAttribute("loginUser", dto);
				
				return "loginSuccess";
				
			}else {
				//로그인실패
				
				return "login";
			}
			
		}else {
				
				return "login";
			
		}
		
		
	
	}//login end
	
	
	
	
	
	@RequestMapping("/myPage")
	public String myPage(HttpServletRequest req) {
		
		//로그인 되어있지 않으면 
		if(req.getSession().getAttribute("loginUser") == null) {
			
			return "login";
		}
				
		return "myPageCheck";
		
	}
	
	@RequestMapping("/myPageModify")
	public String myPageMod(HttpServletRequest req,Model model) {
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		
		//System.out.println(id +"  "+pw);
		
		
		if(id != null && pw != null) {
		
			UserInfoDTO dto = (UserInfoDTO) userDao.selectOneById(id);
			
			if(dto.getUser_pw().equals(pw)) {
				//로그인 성공

				return "myPageModify";
				
			}else {
				//로그인실패
				
				return "myPageCheck";
			}
			
		}else {	
				return "myPageCheck";	
		}
		
	}//myPageMod end
	
	
	@RequestMapping("/myPageModifyOk")
	public String modOk(HttpServletRequest req,Model model,SessionStatus st) {
		
		String user_pw = req.getParameter("user_pw");
		String user_name = req.getParameter("user_name");
		String user_nickname=req.getParameter("user_nickname");
		String user_phone = req.getParameter("user_phone");
		String user_birth = req.getParameter("user_birth");
		String user_loc = req.getParameter("user_loc");
		String user_prof = req.getParameter("user_prof");
		int user_num = Integer.parseInt(req.getParameter("user_num"));
		
	
		UserInfoDTO userInfoDTO = new UserInfoDTO(user_num, "ID" , user_pw, user_name, user_nickname, "A", user_phone, user_birth, user_loc, user_prof, "18");
		userDAO.updateOne(userInfoDTO);
	
		
		UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");
		
		model.addAttribute("loginUser",userDao.selectOneById(dto.getUser_id()));
		
		System.out.println("session 확인 : "+dto.getUser_pw());
		
		return "myPageModify";
	}
	
	
	
	
	
	

}
