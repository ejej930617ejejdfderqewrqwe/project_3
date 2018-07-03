package kr.co.soldesk.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.soldesk.domain.StadiumDTO;
import kr.co.soldesk.domain.TeamInfoDTO;

public class StadiumDAO implements DAO{

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	
	
	@Override
	public List selectAll() {
		return ss.selectList("selectAllStadium");

	}

	@Override
	public void insertOne(Object obj) {
		ss.insert("insertOneStadium", (StadiumDTO)obj);
		
	}

	@Override
	public Object selectOne(int no) {
		return (StadiumDTO)ss.selectOne("selectOneStadium", no);

	}


	@Override
	public void deleteOne(int no) {
		ss.delete("deleteStadium", no);
		
	}



	@Override
	public void updateOne(Object obj) {
		// TODO Auto-generated method stub
		
	}




}
