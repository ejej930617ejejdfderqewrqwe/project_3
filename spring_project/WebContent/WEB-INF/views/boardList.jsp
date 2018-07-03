<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title></title>
 <!-- Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/menu.css" />

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<style type="text/css">
.mybtn {
	margin:0 auto;
	display:block;
    background-color: white; 
    color: black; 
    font-size: 14px;
    border: 2px solid #008CBA;
	}
.mybtn:hover {
    background-color: #008CBA;
    color: white;
	}
</style>	
  
</head>
<body>

	<%
	
	String event = request.getParameter("board_event");
	int category = Integer.parseInt(request.getParameter("board_category"));
	%>


    <div id="top">
      	 <ul>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">홈</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#portfolio">회원가입</a>
            </li>
            
         </ul>  
      </div>
      
      <div id="img">
      <c:choose>
      	
      	<c:when test= "${param.board_event == 'soccer'}">
      	<img src="./resources/img/soccer.jpg" alt="" />
      	</c:when>
      	<c:when test= "${param.board_event == 'basketball'}">
      	<img src="./resources/img/basketball.jpg" alt="" />
      	</c:when>
      	
      	</c:choose>
      </div>
      
   	  <div id=b-list>
           <ul>
              <li class="dropdown">
                    <a href="#" class="dropbtn">팀</a>
                    <div class="dropdown-sub">
              	 	 <a href="#">팀정보</a>
              	 	 </div> 
              </li>
               <li class="dropdown">
               		<a href="#" class="dropbtn">매치보드</a>
               		<div class="dropdown-sub">
                       <a href="#">매치신청</a>   
                   </div>
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">커뮤니티</a>
                   <div class="dropdown-sub">
                  	  <div class="dropdown-sub">
                  	  
                  	   <a href="boardList?board_event=<%=event %>&board_category=1">공지사항</a>
                        <a href="boardList?board_event=<%=event %>&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=<%=event %>&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=<%=event %>&board_category=4">팀모집게시판</a>
                   	</div>
                   </div>
                  
               </li>
               <li class="dropdown">
                   <a href="#" class="dropbtn">경기장</a>
                   <div class="dropdown-sub">
                       <a href="#">경기장안내</a>            
                   </div>
               </li>
           </ul>
       </div> 
 
		
	    <div id="list">
	     	
	     <c:choose>
      	
	      	<c:when test= "${param.board_category == 1}">
	      		<h3>공지사항</h3>
	      	</c:when>
	        <c:when test= "${param.board_category == 2}">
	      		<h3>자유게시판</h3>
	      	</c:when>
	      	<c:when test= "${param.board_category == 3}">
	      		<h3>팀가입인사</h3>
	      	</c:when>
	      	<c:when test= "${param.board_category == 4}">
	      		<h3>모집게시판</h3>
	      	</c:when>
      	
      	</c:choose>
	     
	    </div>
     
  
     
    <div id="table">
      <table class="table table-striped table-bordered table-hover" style="width: 100%">
       
          <tr>
            <th width="10%">번호</th>
            <th width="40%">제목</th>
            <th width="10%">작성자</th>
            <th width="20%">작성일</th>
            <th width="10%">조회</th>
            <th width="10%">추천</th>
          </tr>
       
       
        
        
		 <c:forEach var="b" items="${boardlist }"> 
		
		<tr>
			<td>${b.board_num}</td>
			<td id="title"><a href="boardDetail?no=${b.board_num }&board_category=<%=category%>&board_event=<%=event%>">
						${b.board_title}</a></td>
			<td>${b.board_writer}</td>
			<td>${b.board_date}</td>
			<td>${b.board_hits  }</td>
			<td>${b.board_nomination }</td>
		</tr>
		
		</c:forEach> 
		
		
       
      </table>
      
       </div>
      <!-- Paging 처리 -->
      <div id="paging">
      	페이징 처리
      </div>
     <a href="boardInsert?event=<%=event%>&category=<%=category%>">
			<input type="button" value="글쓰기"  class="mybtn"/>
		</a>
   
</body>
</html>



