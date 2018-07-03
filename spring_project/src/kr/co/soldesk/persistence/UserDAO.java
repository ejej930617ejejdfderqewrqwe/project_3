package kr.co.soldesk.persistence;

import kr.co.soldesk.domain.UserInfoDTO;

public interface UserDAO {
	
	public UserInfoDTO selectOneById(String id);

}
