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
	BoardDTO dto = new BoardDTO();
	
	int category = dto.getBoard_category();
	String event = dto.getBoard_event();
	%>
	window.onload=function(){
		setTimeout(function(){
			
			location.href="boardList?board_event="+event+"&board_category="+category;
		},1000);
	}
</script>
	
<title>boardInsertOk</title>
</head>
<body>




</body>
</html>