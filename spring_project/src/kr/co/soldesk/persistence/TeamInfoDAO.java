package kr.co.soldesk.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.UserInfoDTO;

public class TeamInfoDAO implements DAO,TeamInfoImple{

	
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	
	
	
	@Override
	public List<TeamInfoDTO> selectAll() {
		return ss.selectList("selectAllTeamInfo");

	}

	@Override
	public void insertOne(Object obj) {
		ss.insert("insertOneTeamInfo", (TeamInfoDTO)obj);
		
	}

	@Override
	public Object selectOne(int no) {
		return (TeamInfoDTO)ss.selectOne("selectOneTeamInfo", no);

	}



	@Override
	public void deleteOne(int no) {
		ss.delete("deleteTeamInfo", no);
		
	}




	@Override
	public void updateOne(Object obj) {
		ss.update("updateTeamInfo",(TeamInfoDTO)obj);
	}




	@Override
	public List<TeamInfoDTO> myTeamInfo(int no) {
		return ss.selectList("selectMyTeamInfo",no);
	}
	
	

}
