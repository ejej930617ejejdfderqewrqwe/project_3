<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h2>teamInsertForm.jsp</h2>

<form action="teamInsertOk" method="post">
	<table>
	
		<tr>
			<td>team_name</td>
			<th>
				<input type="text" name="team_name" id="" />
			</th>
		</tr>
		
		
		<tr>
			<td>team_location</td>
			<th>
				<input type="text" name="team_location" id="" />
			</th>
		</tr>
		
		<tr>
			<th>team_event</th>
			<td>
				<input type="text" name="team_event" id="" />
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