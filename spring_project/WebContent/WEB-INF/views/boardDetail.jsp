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

<script type="text/javascript">

$(document).ready(function() {
	
	$("#deletebtn").on('click', function(){
		if(confirm("삭제하시겠습니까?") == true){
			document.frm.submit();
		} else {
			return;
			
		}
		
	});
});

</script>


<style type="text/css">

table, th, tr, td{
	border: 1px solid black;
	border-collapse: collapse;
}

.mybtn {
	margin-left:15px;
    background-color: white; 
    color: black; 
    font-size: 11px;
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
              <a class="nav-link js-scroll-trigger" href="insert">회원가입</a>
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
     
       
       <div id="boardlist">
	     	
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
      <table>
     
	        <tr>
	            <th width="10%">작성자</textarea></th>
	            <td width="20%">${boardDetail.board_writer }</td>
	            <th width="15%">조회수</th>
	            <td width="20%">${boardDetail.board_hits }</td>
	            <th width="15%">추천수</th>
	            <td width="20%">${boardDetail.board_nomination }</td>  
	        </tr>
        
	        <tr id="title">
				<th>제목</th>
				<td colspan="5">
					${boardDetail.board_title }
				</td>
			</tr>
			
			<tr id="contents">
				<th>내용</th>
				 <td colspan="5">
					<textarea style="resize:none" style="overflow:visible" disabled="disabled" name="context" cols="100" rows="10">${boardDetail.board_contents }</textarea> 
				 </td> 
			</tr>
			
			<tr>
				<td colspan="6">
					<input type="button" value="목록"  class="mybtn" onclick="javascript:location.href='boardList?board_category=<%=category%>&board_event=<%=event%>'"/>
					<input type="button" value="수정"  class="mybtn" onclick="javascript:location.href='boardModify?no=${boardDetail.board_num }&board_category=<%=category%>&board_event=<%=event%>'"/>
					
					<input type="button"  value=삭제 id="deletebtn" class="mybtn"/>
				<form action="deleteOk" name="frm">
					<input type="hidden" name="board_category" value="<%=category %>" />
					<input type="hidden" name="board_event" value="<%=event %>" />
					<input type="hidden" name="board_num" value="${boardDetail.board_num }" />
				
				</form>
				</td>
			
			</tr>
			
			
			
		
	</table>
	
	</div>
        
        
        
		

	
</body>
</html>

