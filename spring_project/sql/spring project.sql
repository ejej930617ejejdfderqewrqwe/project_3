

----sys계정에서 하기----------

create user spring identified by soldesk;

grant connect, resource to spring;


conn spring;



----spring 계정에서 하기---------------


-- 회원정보
CREATE TABLE User_Info (
	USER_NUM      NUMBER         NOT NULL, -- 회원번호
	user_id       VARCHAR2(50)   NOT NULL, -- ID
	user_pw       VARCHAR2(20)   NOT NULL, -- PW
	user_name     VARCHAR2(20)   NOT NULL, -- 이름
	user_nicname  VARCHAR2(50)   NOT NULL, -- 닉네임
	user_grade    VARCHAR2(20))  NOT NULL, -- 등급
	user_phone    VARCHAR2(13)   NOT NULL, -- 전화번호
	user_birth    NUMBER(8)      NOT NULL, -- 생년월일
	user_location VARCHAR2(70)   NOT NULL, -- 지역
	user_profile  VARCHAR2(1000) NOT NULL, -- 프로필사진
	user_regdate  DATE           NOT NULL  -- 가입일자
);

-- 회원정보 기본키
CREATE UNIQUE INDEX PK_User_Info
	ON User_Info ( -- 회원정보
		USER_NUM ASC -- 회원번호
	);

-- 회원정보
ALTER TABLE User_Info
	ADD
		CONSTRAINT PK_User_Info -- 회원정보 기본키
		PRIMARY KEY (
			USER_NUM -- 회원번호
		);

-- 게시판
CREATE TABLE Board (
	BOARD_EVENT      VARCHAR2(20)   NOT NULL, -- 종목
	BOARD_CATEGORY   NUMBER(2)      NOT NULL, -- 게시판분류
	USER_NUM         NUMBER         NOT NULL, -- 회원번호
	board_num        NUMBER         NOT NULL, -- 게시글번호
	board_title      VARCHAR2(100)  NOT NULL, -- 게시글제목
	board_writer     VARCHAR2(50)   NOT NULL, -- 글쓴이
	board_date       DATE           NOT NULL, -- 작성일
	board_contents   VARCHAR2(2000) NULL,     -- 게시글내용
	board_image      VARCHAR2(1000) NULL,     -- 첨부파일
	board_status     NUMBER(1)      NOT NULL, -- 상태
	board_hits       NUMBER         NOT NULL, -- 조회수
	board_nomination NUMBER         NOT NULL  -- 추천수
);

-- 게시판 기본키
CREATE UNIQUE INDEX PK_Board
	ON Board ( -- 게시판
		BOARD_EVENT    ASC, -- 종목
		BOARD_CATEGORY ASC, -- 게시판분류
		USER_NUM       ASC  -- 회원번호
	);

-- 게시판
ALTER TABLE Board
	ADD
		CONSTRAINT PK_Board -- 게시판 기본키
		PRIMARY KEY (
			BOARD_EVENT,    -- 종목
			BOARD_CATEGORY, -- 게시판분류
			USER_NUM        -- 회원번호
		);

-- 팀정보
CREATE TABLE Team_Info (
	TEAM_NUM      NUMBER       NOT NULL, -- 팀번호
	team_name     VARCHAR2(50) NOT NULL, -- 팀명
	team_location VARCHAR2(50) NOT NULL, -- 활동지역
	team_event    VARCHAR2(20) NOT NULL, -- 종목
	team_count    NUMBER(2)    NOT NULL, -- 팀원수
	team_record   VARCHAR2(20) NOT NULL, -- 전적
	team_score    NUMBER(5)    NOT NULL  -- 팀점수
);

-- 팀정보 기본키
CREATE UNIQUE INDEX PK_Team_Info
	ON Team_Info ( -- 팀정보
		TEAM_NUM ASC -- 팀번호
	);

-- 팀정보
ALTER TABLE Team_Info
	ADD
		CONSTRAINT PK_Team_Info -- 팀정보 기본키
		PRIMARY KEY (
			TEAM_NUM -- 팀번호
		);

-- 경기장정보
CREATE TABLE Stadium (
	STADIUM_NUM      NUMBER         NOT NULL, -- 경기장번호
	stadium_name     VARCHAR2(100)  NOT NULL, -- 경기장명
	stadium_location VARCHAR2(300)  NOT NULL, -- 경기장위치
	stadium_event    VARCHAR2(20)   NOT NULL, -- 운영종목
	stadium_tel      VARCHAR2(13)   NOT NULL, -- 연락처
	stadium_date     VARCHAR2(20)   NOT NULL, -- 운영요일
	stadium_time     VARCHAR2(50)   NOT NULL, -- 운영시간
	stadium_image    VARCHAR2(1000) NOT NULL  -- 이미지
);

-- 경기장정보 기본키
CREATE UNIQUE INDEX PK_Stadium
	ON Stadium ( -- 경기장정보
		STADIUM_NUM ASC -- 경기장번호
	);

-- 경기장정보
ALTER TABLE Stadium
	ADD
		CONSTRAINT PK_Stadium -- 경기장정보 기본키
		PRIMARY KEY (
			STADIUM_NUM -- 경기장번호
		);

-- 매칭정보
CREATE TABLE Match_Info (
	MATCHREG_NUM     NUMBER       NOT NULL, -- 매칭등록번호
	USER_NUM         NUMBER       NOT NULL, -- 회원번호
	TEAM_NUM         NUMBER       NOT NULL, -- 팀번호
	STADIUM_NUM      NUMBER       NOT NULL, -- 경기장번호
	match_challenger VARCHAR2(50) NOT NULL, -- 신청팀명
	match_champion   VARCHAR2(50) NOT NULL, -- 수락팀명
	match_status     NUMBER(1)    NOT NULL, -- 상태
	match_result     VARCHAR2(20) NOT NULL  -- 경기결과
);

-- 매칭정보 기본키
CREATE UNIQUE INDEX PK_Match_Info
	ON Match_Info ( -- 매칭정보
		MATCHREG_NUM ASC, -- 매칭등록번호
		USER_NUM     ASC, -- 회원번호
		TEAM_NUM     ASC, -- 팀번호
		STADIUM_NUM  ASC  -- 경기장번호
	);

-- 매칭정보
ALTER TABLE Match_Info
	ADD
		CONSTRAINT PK_Match_Info -- 매칭정보 기본키
		PRIMARY KEY (
			MATCHREG_NUM, -- 매칭등록번호
			USER_NUM,     -- 회원번호
			TEAM_NUM,     -- 팀번호
			STADIUM_NUM   -- 경기장번호
		);

-- 팀등록
CREATE TABLE Team_Reg (
	TEAMREG_NUM     NUMBER       NOT NULL, -- 팀등록번호
	USER_NUM        NUMBER       NOT NULL, -- 회원번호
	TEAM_NUM        NUMBER       NOT NULL, -- 팀번호
	teamreg_event   VARCHAR2(20) NOT NULL, -- 종목선택
	teamreg_positon VARCHAR2(20) NOT NULL  -- 포지션선택
);

-- 팀등록 기본키
CREATE UNIQUE INDEX PK_Team_Reg
	ON Team_Reg ( -- 팀등록
		TEAMREG_NUM ASC, -- 팀등록번호
		USER_NUM    ASC, -- 회원번호
		TEAM_NUM    ASC  -- 팀번호
	);

-- 팀등록
ALTER TABLE Team_Reg
	ADD
		CONSTRAINT PK_Team_Reg -- 팀등록 기본키
		PRIMARY KEY (
			TEAMREG_NUM, -- 팀등록번호
			USER_NUM,    -- 회원번호
			TEAM_NUM     -- 팀번호
		);

-- 회원세부정보
CREATE TABLE USER_DETAIL (
);

-- 매칭등록
CREATE TABLE Match_Reg (
	MATCHREG_NUM    NUMBER       NOT NULL, -- 매칭등록번호
	USER_NUM        NUMBER       NOT NULL, -- 회원번호
	STADIUM_NUM     NUMBER       NOT NULL, -- 경기장번호
	matchreg_event  VARCHAR2(20) NOT NULL, -- 종목
	matchreg_date   DATE         NOT NULL, -- 매칭날짜
	matchreg_time   VARCHAR2(20) NOT NULL, -- 경기시간
	matchreg_status NUMBER(1)    NOT NULL  -- 상태
);

-- 매칭등록 기본키
CREATE UNIQUE INDEX PK_Match_Reg
	ON Match_Reg ( -- 매칭등록
		MATCHREG_NUM ASC, -- 매칭등록번호
		USER_NUM     ASC, -- 회원번호
		STADIUM_NUM  ASC  -- 경기장번호
	);

-- 매칭등록
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT PK_Match_Reg -- 매칭등록 기본키
		PRIMARY KEY (
			MATCHREG_NUM, -- 매칭등록번호
			USER_NUM,     -- 회원번호
			STADIUM_NUM   -- 경기장번호
		);

-- 팀생성
CREATE TABLE CREATE_TEAM (
);

-- 게시판
ALTER TABLE Board
	ADD
		CONSTRAINT FK_User_Info_TO_Board -- 회원정보 -> 게시판
		FOREIGN KEY (
			USER_NUM -- 회원번호
		)
		REFERENCES User_Info ( -- 회원정보
			USER_NUM -- 회원번호
		);

-- 매칭정보
ALTER TABLE Match_Info
	ADD
		CONSTRAINT FK_Match_Reg_TO_Match_Info -- 매칭등록 -> 매칭정보
		FOREIGN KEY (
			MATCHREG_NUM, -- 매칭등록번호
			USER_NUM,     -- 회원번호
			STADIUM_NUM   -- 경기장번호
		)
		REFERENCES Match_Reg ( -- 매칭등록
			MATCHREG_NUM, -- 매칭등록번호
			USER_NUM,     -- 회원번호
			STADIUM_NUM   -- 경기장번호
		);

-- 매칭정보
ALTER TABLE Match_Info
	ADD
		CONSTRAINT FK_Team_Info_TO_Match_Info -- 팀정보 -> 매칭정보
		FOREIGN KEY (
			TEAM_NUM -- 팀번호
		)
		REFERENCES Team_Info ( -- 팀정보
			TEAM_NUM -- 팀번호
		);

-- 팀등록
ALTER TABLE Team_Reg
	ADD
		CONSTRAINT FK_User_Info_TO_Team_Reg -- 회원정보 -> 팀등록
		FOREIGN KEY (
			USER_NUM -- 회원번호
		)
		REFERENCES User_Info ( -- 회원정보
			USER_NUM -- 회원번호
		);

-- 팀등록
ALTER TABLE Team_Reg
	ADD
		CONSTRAINT FK_Team_Info_TO_Team_Reg -- 팀정보 -> 팀등록
		FOREIGN KEY (
			TEAM_NUM -- 팀번호
		)
		REFERENCES Team_Info ( -- 팀정보
			TEAM_NUM -- 팀번호
		);

-- 매칭등록
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT FK_User_Info_TO_Match_Reg -- 회원정보 -> 매칭등록
		FOREIGN KEY (
			USER_NUM -- 회원번호
		)
		REFERENCES User_Info ( -- 회원정보
			USER_NUM -- 회원번호
		);

-- 매칭등록
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT FK_Stadium_TO_Match_Reg -- 경기장정보 -> 매칭등록
		FOREIGN KEY (
			STADIUM_NUM -- 경기장번호
		)
		REFERENCES Stadium ( -- 경기장정보
			STADIUM_NUM -- 경기장번호
		);


-- 시퀀스
create sequence user_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence board_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence team_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence teamreg_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence matchreg_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;
