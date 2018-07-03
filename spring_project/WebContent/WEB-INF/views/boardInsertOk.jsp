<%@page import="kr.co.soldesk.domain.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript">

	<%
	
	int category = Integer.parseInt(request.getParameter("category"));
	String event = request.getParameter("event");
	%>
	window.onload=function(){
		setTimeout(function(){
			
			location.href="boardList?event="+<%=event %>+"&category="+<%=category %>;
		},1000);
	}
</script>
	
<title>boardInsertOk</title>
</head>
<body>




</body>
</html>