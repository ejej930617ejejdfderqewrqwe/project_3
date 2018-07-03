<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertForm</title>
</head>
<body>

<h2>insertForm.jsp</h2>

<form action="insertOk" method="post">
	<table>
	
		
		<tr>
			<td>user_id</td>
			<th>
				<input type="text" name="user_id" id="" />
			</th>
		</tr>
		
		<tr>
			<th>user_pw</th>
			<td>
				<input type="text" name="user_pw" id="" />
			</td>
		</tr>
		
			<tr>
			<th>user_name</th>
			<td>
			 <input type="text" name="user_name" id="" />
			</td>
		</tr>
		
			<tr>
			<th>user_nickname</th>
			<td>
				<input type="text" name="user_nickname" id="" />
			</td>
		</tr>
		
			<tr>
			<th>user_grade</th>
			<td>
				<input type="text" name="user_grade" id="" />
			</td>
		</tr>
		
			<tr>
			<th>user_phone</th>
			<td>
				<input type="text" name="user_phone" id="" />
			</td>
		</tr>
		
		
			<tr>
			<th>user_birth</th>
			<td>
				<input type="text" name="user_birth" id="" />
			</td>
		</tr>
		
			<tr>
			<th>user_loc</th>
			<td>
				<input type="text" name="user_loc" id="" />
			</td>
		</tr>
		
		<tr>
			<th>user_prof</th>
			<td>
				<input type="text" name="user_prof" id="" />
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