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

	<h2>전국 팀 정보</h2>
	
		<table>
		<tr>
			<th>번호</th>
			<th>팀명</th>
			<th>종목</th>
			<th>지역</th>
		
		</tr>
		
		<c:forEach var="t" items="${teamlist }">
		
		<tr>
			<td>${t.team_num}</td>
			<td><a href="teamDetail?teamno=${t.team_num}">${t.team_name}</a></td>
			<td>${t.team_event }</td>
			<td>${t.team_location}</td>
		</tr>
		
		</c:forEach> 
	</table>



</body>
</html>