package kr.co.soldesk.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class MatchInfoDAO implements DAO {
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(Object obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Object selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateOne(Object obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
