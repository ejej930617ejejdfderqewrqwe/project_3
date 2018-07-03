package kr.co.soldesk.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.soldesk.domain.BoardDTO;


public class BoardDAO implements DAO,BoardImple {
	
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<BoardDTO> selectAll() {
	
	
	
		return ss.selectList("selectAllBoard");

	}
	
	

	@Override
	public void insertOne(Object obj) {
		
	ss.insert("insertOneBoard", (BoardDTO) obj);
		
	}
	
	

	@Override
	public Object selectOne(int no) {
		
		return (BoardDTO)ss.selectOne("selectOneBoard", no);
	}

	@Override
	public void updateOne(Object obj) {
		ss.update("updateBoard", (BoardDTO) obj);
		
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("deleteBoard", no);
		
	}

	@Override
	public List<BoardDTO> selectAllByCate(BoardDTO boardDTO) {
		
		
		return ss.selectList("selectBoardByCate",boardDTO);
	}

	@Override
	public List<BoardDTO> selectAllMyBoard(int no) {
	
		return ss.selectList("selectAllMyBoard", no);
	}



	
	
	
}
