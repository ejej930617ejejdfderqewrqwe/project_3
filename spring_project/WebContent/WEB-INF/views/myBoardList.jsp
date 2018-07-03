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

<h2>${loginUser.user_name }님이 쓴 글</h2>


      <table>
       
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성일</th>
          
          </tr>
       
       
        
        
		 <c:forEach var="b" items="${myBoardList }"> 
		
		<tr>
			<td>${b.board_num}</td>
			<td>${b.board_title}</a></td>
			<td>${b.board_date}</td>
			
		</tr>
		
		</c:forEach> 
		
		
       
      </table>

</body>
</html>