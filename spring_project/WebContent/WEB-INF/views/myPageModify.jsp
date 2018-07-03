<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>내 정보 수정</h2>

<form action="myPageModifyOk" method="post">
	<table>
	
		
		<tr>
			<th>user_pw</th>
			<td>
				<input type="text" name="user_pw" value="${loginUser.user_pw }" id="" />
			</td>
		</tr>
		
			<tr>
			<th>user_name</th>
			<td>
			 <input type="text" name="user_name" id="" value="${loginUser.user_name }" />
			</td>
		</tr>
		
			<tr>
			<th>user_nickname</th>
			<td>
				<input type="text" name="user_nickname" id="" value="${loginUser.user_nickname }" />
			</td>
		</tr>
		
		
			<tr>
			<th>user_phone</th>
			<td>
				<input type="text" name="user_phone" id="" value="${loginUser.user_phone }"/>
			</td>
		</tr>
		
		
			<tr>
			<th>user_birth</th>
			<td>
				<input type="text" name="user_birth" id=""  value="${loginUser.user_birth }" />
			</td>
		</tr>
		
			<tr>
			<th>user_loc</th>
			<td>
				<input type="text" name="user_loc" id="" value="${loginUser.user_loc }" />
			</td>
		</tr>
		
		<tr>
			<th>user_prof</th>
			<td>
				<input type="text" name="user_prof" id="" value="${loginUser.user_prof }" />
				<input type="hidden" name="user_num" value="${loginUser.user_num }" />
			</td>
		</tr>
		
		
	
		<tr>
			<td colspan="2">
				<input type="submit" value="입력" />
			</td>
		</tr>		
	</table>
</form>

</body>
</html>