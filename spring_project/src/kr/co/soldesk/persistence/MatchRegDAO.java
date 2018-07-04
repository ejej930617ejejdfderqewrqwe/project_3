package kr.co.soldesk.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.soldesk.domain.MatchRegDTO;

public class MatchRegDAO implements DAO {
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<MatchRegDTO> selectAll() {
		return ss.selectList("selectAllMatch");
	}

	@Override
	public void insertOne(Object obj) {
		ss.insert("insertMatchReg", (MatchRegDTO)obj);
	}

	@Override
	public Object selectOne(int no) {
		return (MatchRegDTO)ss.selectOne("selectOneMatch", no);
	}

	
	@Override
	public void deleteOne(int no) {
		ss.delete("deleteMatch", no);
	}

	@Override
	public void updateOne(Object obj) {
		ss.update("updateMatch",(MatchRegDTO)obj);
		
	}
	
}
