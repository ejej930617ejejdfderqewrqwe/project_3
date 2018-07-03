<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<h2>list.jsp</h2>
	<table>
		<tr>
			<th>회원번호</th>
			<th>회원id</th>
			<th>회원등급</th>
		
		</tr>
		
		<c:forEach var="i" items="${userlist }">
		
		<tr>
			<td>${i.user_num}</td>
			<td>${i.user_id}</td>
			<td>${i.user_grade }</td>
		</tr>
		
		</c:forEach> 
	</table>
	
<!-- 	/insert -> insertForm.jsp 
		/insertOk ======> insertOk.jsp
			   (파라미터) db
-->


<a href="insert">
	<input type="button" value="회원입력" />
</a>




</body>
</html>