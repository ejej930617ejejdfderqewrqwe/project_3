package kr.co.soldesk.domain;

public class StadiumDTO {
	

	private int stadium_num;      
	private String stadium_name;     
	private String stadium_location;
	private String stadium_event ;
	private String stadium_tel;     
	private String stadium_date;     
	private String stadium_time;    
	private String stadium_image;
	
	public StadiumDTO() {
		super();
	}

	public StadiumDTO(int stadium_num, String stadium_name, String stadium_location, String stadium_event,
			String stadium_tel, String stadium_date, String stadium_time, String stadium_image) {
		super();
		this.stadium_num = stadium_num;
		this.stadium_name = stadium_name;
		this.stadium_location = stadium_location;
		this.stadium_event = stadium_event;
		this.stadium_tel = stadium_tel;
		this.stadium_date = stadium_date;
		this.stadium_time = stadium_time;
		this.stadium_image = stadium_image;
	}

	public int getStadium_num() {
		return stadium_num;
	}

	public void setStadium_num(int stadium_num) {
		this.stadium_num = stadium_num;
	}

	public String getStadium_name() {
		return stadium_name;
	}

	public void setStadium_name(String stadium_name) {
		this.stadium_name = stadium_name;
	}

	public String getStadium_location() {
		return stadium_location;
	}

	public void setStadium_location(String stadium_location) {
		this.stadium_location = stadium_location;
	}

	public String getStadium_event() {
		return stadium_event;
	}

	public void setStadium_event(String stadium_event) {
		this.stadium_event = stadium_event;
	}

	public String getStadium_tel() {
		return stadium_tel;
	}

	public void setStadium_tel(String stadium_tel) {
		this.stadium_tel = stadium_tel;
	}

	public String getStadium_date() {
		return stadium_date;
	}

	public void setStadium_date(String stadium_date) {
		this.stadium_date = stadium_date;
	}

	public String getStadium_time() {
		return stadium_time;
	}

	public void setStadium_time(String stadium_time) {
		this.stadium_time = stadium_time;
	}

	public String getStadium_image() {
		return stadium_image;
	}

	public void setStadium_image(String stadium_image) {
		this.stadium_image = stadium_image;
	}
	
	
	
	
	
	
	
	
	

}
