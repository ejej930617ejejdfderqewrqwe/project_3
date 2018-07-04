package kr.co.soldesk.domain;

public class MatchInfoDTO {
	private int matchreg_num;
	private int user_num;
	private int team_num;
	private int stadium_num;
	private String match_challenger;
	private String match_champion;
	private int match_status;
	private int match_result;
	
	public MatchInfoDTO() {
		
	}

	public MatchInfoDTO(int matchreg_num, int user_num, int team_num, int stadium_num, String match_challenger,
			String match_champion, int match_status, int match_result) {
		super();
		this.matchreg_num = matchreg_num;
		this.user_num = user_num;
		this.team_num = team_num;
		this.stadium_num = stadium_num;
		this.match_challenger = match_challenger;
		this.match_champion = match_champion;
		this.match_status = match_status;
		this.match_result = match_result;
	}

	public int getMatchreg_num() {
		return matchreg_num;
	}

	public void setMatchreg_num(int matchreg_num) {
		this.matchreg_num = matchreg_num;
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

	public int getStadium_num() {
		return stadium_num;
	}

	public void setStadium_num(int stadium_num) {
		this.stadium_num = stadium_num;
	}

	public String getMatch_challenger() {
		return match_challenger;
	}

	public void setMatch_challenger(String match_challenger) {
		this.match_challenger = match_challenger;
	}

	public String getMatch_champion() {
		return match_champion;
	}

	public void setMatch_champion(String match_champion) {
		this.match_champion = match_champion;
	}

	public int getMatch_status() {
		return match_status;
	}

	public void setMatch_status(int match_status) {
		this.match_status = match_status;
	}

	public int getMatch_result() {
		return match_result;
	}

	public void setMatch_result(int match_result) {
		this.match_result = match_result;
	}
}
