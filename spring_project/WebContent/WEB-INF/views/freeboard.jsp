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

  
</head>
<body>

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
      	<img src="./resources/img/soccer.jpg" alt="" />
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
                  	   <a href="#">공지사항</a>
                       <a href="freeboard.do">자유게시판</a>
                       <a href="#">팀가입인사</a>
                       <a href="#">모집게시판</a>
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
 
   <div id="container"> 
   
    <div id="list">
      <b>게시판 (전체 글: ${totalCount})</b>
    </div>
     
    <%-- <div id="write">
      <a href="/bbs/writeForm.bbs?pageNum=${pageNum}">글쓰기</a>
    </div> --%>
     
    <div id="table">
      <table class="table table-striped table-bordered table-hover" style="width: 100%" >
        <thead>
          <tr>
            <th width="10%">번호</th>
            <th width="40%">제목</th>
            <th width="10%">작성자</th>
            <th width="20%">작성일</th>
            <th width="10%">조회</th>
            <th width="10%">추천</th>
          </tr>
        </thead>
        <tbody>
        
        
		<c:forEach var="b" items="${boardlist }">
		
		<tr>
			<td>${b.board_num}</td>
			<td id="title"><a href="boardDetail?no=${b.board_num }">${b.board_title}</a></td>
			<td>${b.board_writer}</td>
			<td>${b.board_date}</td>
			<td>${b.board_contents}</td>
			<td>${b.board_hits  }</td>
			<td>${b.board_nominatio }</td>
		</tr>
		
		</c:forEach> 
		
		
        </tbody>
      </table>
      	 <a href="boardInsert">
			<input type="button" value="글쓰기" />
		</a>
       </div>
      <!-- Paging 처리 -->
      <div id="paging">
        [페이징처리]
      </div>
    
   </div> 
</body>
</html>




