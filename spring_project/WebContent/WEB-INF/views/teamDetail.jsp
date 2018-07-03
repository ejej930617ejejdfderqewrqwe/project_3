<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>${teamDetail.team_name } 팀의 정보 입니다.</h2>
<h3>종목 : ${teamDetail.team_event }</h3>
<h3>지역 : ${teamDetail.team_location }</h3>
<h3>전적 : ${teamDetail.team_record }</h3>


<a href="teamReg?teamno=${teamDetail.team_num }&teamevent=${teamDetail.team_event } ">이 팀에 등록</a>



</body>
</html>