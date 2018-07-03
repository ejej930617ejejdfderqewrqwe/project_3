<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stadium list</title>
</head>
<body>

<h2>경기장 리스트</h2>

<table>
		<tr>
			<th>팀이름</th>
			<th>지역</th>
			<th>종목</th>
		
		</tr>
		
		<c:forEach var="s" items="${stadiumlist }">
		
		<tr>
			<td>${s.stadium_name}</td>
			<td>${s.stadium_location}</td>
			<td>${s.stadium_event}</td>
		</tr>
		
		</c:forEach> 
	</table>

</body>
</html>