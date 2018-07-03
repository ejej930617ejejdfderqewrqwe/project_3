package kr.co.soldesk.persistence;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import kr.co.soldesk.domain.LoginVO;
import kr.co.soldesk.domain.UserInfoDTO;



public class UserInfoDAO implements DAO,UserDAO{
	
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	

	@Override
	public List<UserInfoDTO> selectAll() {
		
		return ss.selectList("selectAllUserInfo");
	}

	@Override
	public void insertOne(Object obj) {
		
	ss.insert("insertOneUserInfo", (UserInfoDTO)obj);
		
	}

	@Override
	public Object selectOne(int no) {
		
		return (UserInfoDTO)ss.selectOne("selectOneUserInfo", no);
	}
	
	


	@Override
	public void updateOne(Object obj) {
		ss.update("updateUserInfo",(UserInfoDTO)obj);
	}


	

	@Override
	public void deleteOne(int no) {
		ss.delete("deleteUserInfo", no);
		
	}

	public boolean login (LoginVO vo) {
		System.out.println("login함수들어옴");

		System.out.println(vo.getUser_id()+"  "+vo.getUser_pw());
		
		int count = ss.selectOne("loginCheck", vo);
		
	
		
		System.out.println(count);
		
		return false;
	
	}



	@Override
	public UserInfoDTO selectOneById(String id) {
		return ss.selectOne("selectOneUserInfoById", id);
	}


	




}
