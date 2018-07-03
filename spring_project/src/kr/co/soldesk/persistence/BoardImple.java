package kr.co.soldesk.persistence;

import java.util.List;

import kr.co.soldesk.domain.BoardDTO;

public interface BoardImple {

	
	public List<BoardDTO> selectAllByCate(BoardDTO boardDTO);
	public List<BoardDTO> selectAllMyBoard(int no);
	
}
