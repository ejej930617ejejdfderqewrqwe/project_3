<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>마이페이지</h2>
	
	<form action="myPageModify">
	
	<table>
		<tr>
			<th>id</th>
			<td>
				<input type="text" name="user_id" value="${loginUser.user_id }" />

			</td>
		</tr>
		
		<tr>
			<th>pw</th>
			<td>
				<input type="text" name="user_pw" />
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="확인" />
			</td>
		</tr>
	</table>
	
	
	
	</form>
	
</body>
</html>