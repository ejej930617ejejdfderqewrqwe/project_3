
package kr.co.soldesk.control;


import java.io.IOException;
//p2
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.soldesk.domain.BoardDTO;
import kr.co.soldesk.domain.UserInfoDTO;
import kr.co.soldesk.persistence.BoardImple;
import kr.co.soldesk.persistence.DAO;

@Controller
public class BoardControl {
	
	
	@Autowired
	DAO boardDAO;	
	
	
	@Autowired
	BoardImple boardImple;
	
	public void setDao(DAO boardDAO) {
		this.boardDAO = boardDAO;
	}
	
	
	

	public void setBoardImple(BoardImple boardImple) {
		this.boardImple = boardImple;
	}




	/*//모든 게시글 리스트
	@RequestMapping(value="/boardList")
	public String list(Model model) {
		
		List<BoardDTO> list = boardDAO.
		
		model.addAttribute("boardlist", list);
		
		return "boardList";		
	}*/
	
	
	//종목별, 카테고리별 게시판 리스트
	
	/*@RequestMapping(value="/cateBoardList")*/
/*	@RequestMapping(value="/boardList")
	public String cateList(@ModelAttribute BoardDTO boardDTO,Model model) {
		
		List<BoardDTO> list = boardImple.selectAllByCate(boardDTO);
		
		
		model.addAttribute("boardlist",list);
		
		return "boardList";
	}*/
	
	@RequestMapping(value="/boardList")
	public String list(HttpServletRequest req, Model model) {
		String event = req.getParameter("board_event");
		String no = req.getParameter("board_category");
		int category = Integer.parseInt(no);
	
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setBoard_event(event);
		 boardDTO.setBoard_category(category);
		
		List<BoardDTO> list = boardImple.selectAllByCate(boardDTO);
		
		model.addAttribute("boardlist",list);
		return "boardList";
	}
	
	
	
	//게시글 입력
		@RequestMapping("/")
		public String processStep() {
			return "main";
		}
		
		@RequestMapping("/soccerMain")
		public String processStep5() {
			return "soccerMain";
		}
	
	
	//게시글 입력
	@RequestMapping("/boardInsert")
	public String processStep1() {
		return "boardInsertForm";
	}
	
	
	
	@RequestMapping("/boardInsertOk")
	public String processStep2(@ModelAttribute BoardDTO boardDTO) {
		
			boardDAO.insertOne(boardDTO);
			
			BoardDTO dto = new BoardDTO();
			String event = dto.getBoard_event();
			int category = dto.getBoard_category();
		
			
			return "boardList?board_category="+category+"&board_event="+event ;			
			
		}
		
		

	//게시물 디테일보기
	@RequestMapping("/boardDetail")
	public String detail(HttpServletRequest req,Model model) {
	
		if(req.getParameter("no") != null) {
		
	model.addAttribute("boardDetail", boardDAO.selectOne(Integer.parseInt(req.getParameter("no"))));

		return "boardDetail";
		
		}else
			
			return "main";
	}
	
	
	
	@RequestMapping("/boardModify")
	public String modify(HttpServletRequest req,Model model) {

		
	model.addAttribute("boardModify", boardDAO.selectOne(Integer.parseInt(req.getParameter("no"))));

		return "boardModify";
	}
	
	
	
	
	
	@RequestMapping("/modifyOk")
	public String ModifyOk(@ModelAttribute BoardDTO boardDTO,HttpServletResponse resp) throws IOException {
	
		
		/*boardDAO.updateOne(boardDTO);*/	
		
		boardDAO.updateOne(boardDTO);	
		
		BoardDTO dto = new BoardDTO();
		String event = dto.getBoard_event();
		int category = dto.getBoard_category();
				
		
		return "boardList?categoy="+category+"&event="+event;
		
				
		
		/*return "boardList?categoy="+category+"&event="+event;*/
		
		/*resp.sendRedirect("boardModifyOk");*/
		
		}
	

	

	//게시물 삭제
	@RequestMapping("/deleteBoard")
	public void delete(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		
		
		boardDAO.deleteOne(Integer.parseInt(req.getParameter("no")));
		
		resp.sendRedirect("boardList");

	}
	
	
	
	@RequestMapping("/myBoard")
	public String myboard(HttpServletRequest req,Model model) {
		
		UserInfoDTO dto = (UserInfoDTO) req.getSession().getAttribute("loginUser");
		
		List<BoardDTO> list = boardImple.selectAllMyBoard(dto.getUser_num());
		
		model.addAttribute("myBoardList", list);
		
		return "myBoardList";
		
	}
	
	

}
