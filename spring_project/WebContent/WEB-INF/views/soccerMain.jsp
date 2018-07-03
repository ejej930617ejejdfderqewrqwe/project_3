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
  
  
</head>
<body>
	<%
	
	String event = request.getParameter("board_event");
	
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
                  	   <a href="boardList?board_event=<%=event %>&board_category=1">공지사항</a>
                        <a href="boardList?board_event=<%=event %>&board_category=2">자유게시판</a>
                        <a href="boardList?board_event=<%=event %>&board_category=3">팀가입인사</a>
                        <a href="boardList?board_event=<%=event %>&board_category=4">팀모집게시판</a>
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

   <section id="section01">
	   	<div class="list">
	  		<div class="lt">
	  			<p>공지사항</p>
	  		</div>
	  	
	  		<div class="rt">
	  			<p>무슨게시판2</p>
	  		</div>
	  	</div>
  	</section>
  	
  	<section id="section02">
  	<div class="list">
  		<div class="lt">
  			<p>무슨 게시판3</p>
  			
  		</div>
  	
  		<div class="rt">
  			<p>무슨게시판4</p>
  		</div>
  	</div>
  </section>
  
</body>
</html>


