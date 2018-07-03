package kr.co.soldesk.domain;

public class MatchRegDTO {
	private int matchreg_num;
	private int user_num;
	private int stadium_num;
	private String matchreg_event;
	private String matchreg_date;
	private String matchreg_time;
	private int matchreg_status;
	
	public MatchRegDTO() {
		
	}

	public MatchRegDTO(int matchreg_num, int user_num, int stadium_num, String matchreg_event, String matchreg_date,
			String matchreg_time, int matchreg_status) {
		super();
		this.matchreg_num = matchreg_num;
		this.user_num = user_num;
		this.stadium_num = stadium_num;
		this.matchreg_event = matchreg_event;
		this.matchreg_date = matchreg_date;
		this.matchreg_time = matchreg_time;
		this.matchreg_status = matchreg_status;
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

	public int getStadium_num() {
		return stadium_num;
	}

	public void setStadium_num(int stadium_num) {
		this.stadium_num = stadium_num;
	}

	public String getMatchreg_event() {
		return matchreg_event;
	}

	public void setMatchreg_event(String matchreg_event) {
		this.matchreg_event = matchreg_event;
	}

	public String getMatchreg_date() {
		return matchreg_date;
	}

	public void setMatchreg_date(String matchreg_date) {
		this.matchreg_date = matchreg_date;
	}

	public String getMatchreg_time() {
		return matchreg_time;
	}

	public void setMatchreg_time(String matchreg_time) {
		this.matchreg_time = matchreg_time;
	}

	public int getMatchreg_status() {
		return matchreg_status;
	}

	public void setMatchreg_status(int matchreg_status) {
		this.matchreg_status = matchreg_status;
	}
	
}
