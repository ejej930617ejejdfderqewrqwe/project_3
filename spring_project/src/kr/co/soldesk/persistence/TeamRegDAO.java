package kr.co.soldesk.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.TeamRegDTO;



public class TeamRegDAO implements DAO {


	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	
	@Override
	public List<TeamRegDTO> selectAll() {
		return ss.selectList("selectAllTeamReg");
	}

	@Override
	public void insertOne(Object obj) {
		ss.insert("insertTeamReg", (TeamRegDTO)obj);

	}

	@Override
	public Object selectOne(int no) {
		return (TeamRegDTO)ss.selectOne("selectOneTeamReg", no);

	}


	
	

	@Override
	public void deleteOne(int no) {
		ss.delete("deleteTeamReg", no);
		
	}


	@Override
	public void updateOne(Object obj) {
		ss.update("updateTeamReg",(TeamRegDTO)obj);
	}


	
	

}
