package kr.co.soldesk.domain;

public class BoardDTO {
	
		private String board_event;
		private String board_title;
		private String board_writer;
		private String board_contents;
		private String board_image;
		private int board_category;
		private int board_status;
		private int board_hits;
		private int board_nomination;
		private int user_num;
		private int board_num;
		private String board_date;
		
		
		public BoardDTO() {
			super();
		}

	

		public BoardDTO(String board_event, String board_title, String board_writer, String board_contents,
				String board_image, int board_category, int board_status, int board_hits, int board_nomination,
				int user_num, int board_num, String board_date) {
			super();
			this.board_event = board_event;
			this.board_title = board_title;
			this.board_writer = board_writer;
			this.board_contents = board_contents;
			this.board_image = board_image;
			this.board_category = board_category;
			this.board_status = board_status;
			this.board_hits = board_hits;
			this.board_nomination = board_nomination;
			this.user_num = user_num;
			this.board_num = board_num;
			this.board_date = board_date;
		}



		public String getBoard_date() {
			return board_date;
		}



		public void setBoard_date(String board_date) {
			this.board_date = board_date;
		}



		public String getBoard_event() {
			return board_event;
		}

		public void setBoard_event(String board_event) {
			this.board_event = board_event;
		}

		public String getBoard_title() {
			return board_title;
		}

		public void setBoard_title(String board_title) {
			this.board_title = board_title;
		}

		public String getBoard_writer() {
			return board_writer;
		}

		public void setBoard_writer(String board_writer) {
			this.board_writer = board_writer;
		}

		public String getBoard_contents() {
			return board_contents;
		}

		public void setBoard_contents(String board_contents) {
			this.board_contents = board_contents;
		}

		public String getBoard_image() {
			return board_image;
		}

		public void setBoard_image(String board_image) {
			this.board_image = board_image;
		}

		public int getBoard_category() {
			return board_category;
		}

		public void setBoard_category(int board_category) {
			this.board_category = board_category;
		}

		public int getBoard_status() {
			return board_status;
		}

		public void setBoard_status(int board_status) {
			this.board_status = board_status;
		}

		public int getBoard_hits() {
			return board_hits;
		}

		public void setBoard_hits(int board_hits) {
			this.board_hits = board_hits;
		}

		public int getBoard_nomination() {
			return board_nomination;
		}

		public void setBoard_nomination(int board_nomination) {
			this.board_nomination = board_nomination;
		}

		public int getBoard_num() {
			return board_num;
		}

		public void setBoard_num(int board_num) {
			this.board_num = board_num;
		}



		public int getUser_num() {
			return user_num;
		}



		public void setUser_num(int user_num) {
			this.user_num = user_num;
		}
		
		
		
		
		

}
