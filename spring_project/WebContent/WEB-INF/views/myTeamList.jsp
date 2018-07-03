<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>${loginUser.user_name }님의 소속팀 입니다</h2>
	
	<table>
		<tr>
			<th>종목</th>
			<th>팀명</th>
		</tr>
	
		 <c:forEach var="t" items="${myTeamList }"> 
		<tr>
			<td>${t.team_event}</td>
			<td><a href="myTeamDetail?team_num=${t.team_num }">${t.team_name  }</a></td>
		</tr>
		
		</c:forEach> 
	
	</table>

</body>
</html>