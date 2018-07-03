package kr.co.soldesk.persistence;

import java.util.List;

import kr.co.soldesk.domain.UserInfoDTO;

public interface DAO {
	

	public List selectAll();
	public void insertOne(Object obj);
	public Object selectOne(int no);
	public void updateOne(Object obj);
	public void deleteOne(int no);
	


}
 