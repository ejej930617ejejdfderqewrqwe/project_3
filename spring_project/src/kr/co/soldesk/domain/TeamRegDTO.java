package kr.co.soldesk.domain;

public class TeamRegDTO {
	
	private int teamreg_num;    
	private int user_num;	        
	private int team_num;	        
	private int teamreg_event;  
	private String teamreg_position;
	
	public TeamRegDTO() {
		super();
	}

	public TeamRegDTO(int teamreg_num, int user_num, int team_num, int teamreg_event, String teamreg_position) {
		super();
		this.teamreg_num = teamreg_num;
		this.user_num = user_num;
		this.team_num = team_num;
		this.teamreg_event = teamreg_event;
		this.teamreg_position = teamreg_position;
	}

	public int getTeamreg_num() {
		return teamreg_num;
	}

	public void setTeamreg_num(int teamreg_num) {
		this.teamreg_num = teamreg_num;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public int getTeam_num() {
		return team_num;
	}

	public void setTeam_num(int team_num) {
		this.team_num = team_num;
	}

	public int getTeamreg_event() {
		return teamreg_event;
	}

	public void setTeamreg_event(int teamreg_event) {
		this.teamreg_event = teamreg_event;
	}

	public String getTeamreg_positon() {
		return teamreg_position;
	}

	public void setTeamreg_positon(String teamreg_positon) {
		this.teamreg_position = teamreg_positon;
	} 
	
	
	
	
	
	
	

}
