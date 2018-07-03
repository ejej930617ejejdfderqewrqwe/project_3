
<%@page import="kr.co.soldesk.domain.BoardDTO"%>
<%@page import="kr.co.soldesk.persistence.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	
	BoardDTO dto = new BoardDTO();
	int category = dto.getBoard_category();
	String event = dto.getBoard_event();
	
	%>

<script type="text/javascript">
	
		
	
	window.onload=function(){
		
		
		setTimeout(function(){
			
			location.href="boardList?board_category="+<%=category%>+"&board_event="+<%=event%>;
		},100);
	}
</script>


</body>
</html>