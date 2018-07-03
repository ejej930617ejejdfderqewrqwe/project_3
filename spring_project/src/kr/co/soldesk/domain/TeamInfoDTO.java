package kr.co.soldesk.domain;

public class TeamInfoDTO {
	
	private int team_num;
	private String team_name;
	private String team_location;
	private String team_event;
	private int team_count;
	private String team_record;
	private int team_score;
	
	public TeamInfoDTO() {
		super();
	}

	public TeamInfoDTO(int team_num, String team_name, String team_location, String team_event, int team_count,
			String team_record, int team_score) {
		super();
		this.team_num = team_num;
		this.team_name = team_name;
		this.team_location = team_location;
		this.team_event = team_event;
		this.team_count = team_count;
		this.team_record = team_record;
		this.team_score = team_score;
	}

	public int getTeam_num() {
		return team_num;
	}

	public void setTeam_num(int team_num) {
		this.team_num = team_num;
	}

	public String getTeam_name() {
		return team_name;
	}

	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}

	public String getTeam_location() {
		return team_location;
	}

	public void setTeam_location(String team_location) {
		this.team_location = team_location;
	}

	public String getTeam_event() {
		return team_event;
	}

	public void setTeam_event(String team_event) {
		this.team_event = team_event;
	}

	public int getTeam_count() {
		return team_count;
	}

	public void setTeam_count(int team_count) {
		this.team_count = team_count;
	}

	public String getTeam_record() {
		return team_record;
	}

	public void setTeam_record(String team_record) {
		this.team_record = team_record;
	}

	public int getTeam_score() {
		return team_score;
	}

	public void setTeam_score(int team_score) {
		this.team_score = team_score;
	}
	
	
	
	
	
	
	
	
	
	

}
