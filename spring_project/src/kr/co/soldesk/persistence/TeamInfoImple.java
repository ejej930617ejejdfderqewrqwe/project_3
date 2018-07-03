package kr.co.soldesk.persistence;

import java.util.List;

import kr.co.soldesk.domain.TeamInfoDTO;

public interface TeamInfoImple {
	
	public List<TeamInfoDTO> myTeamInfo(int no);

}
