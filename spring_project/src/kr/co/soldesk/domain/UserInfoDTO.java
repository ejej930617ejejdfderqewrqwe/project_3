package kr.co.soldesk.domain;

public class UserInfoDTO {
	
	private int user_num;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_nickname;
	private String user_grade;
	private String user_phone;
	private String user_birth;
	private String user_loc;
	private String user_prof;
	private String user_regdate;

	
	public UserInfoDTO() {
		super();
	}

	public UserInfoDTO(int user_num, String user_id, String user_pw, String user_name, String user_nickname,
			String user_grade, String user_phone, String user_birth, String user_loc, String user_prof, String user_regdate) {
		super();
		this.user_num = user_num;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_grade = user_grade;
		this.user_phone = user_phone;
		this.user_birth = user_birth;
		this.user_loc = user_loc;
		this.user_prof = user_prof;
		this.user_regdate = user_regdate;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_grade() {
		return user_grade;
	}

	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_loc() {
		return user_loc;
	}

	public void setUser_loc(String user_loc) {
		this.user_loc = user_loc;
	}

	public String getUser_prof() {
		return user_prof;
	}

	public void setUser_prof(String user_prof) {
		this.user_prof = user_prof;
	}

	public String getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(String user_regdate) {
		this.user_regdate = user_regdate;
	}


}
