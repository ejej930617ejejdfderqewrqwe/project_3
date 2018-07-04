<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>matchRegForm.jsp</h2>

<form action="matchRegOk" method="post">
	<table>
		<tr>
			<td>user_num</td>
			<th>
				<input type="hidden" name="user_num" id="" value="${loginUser.user_num }" />
				<!-- <input type="text" name="user_num" id="" /> -->
			</th>
		</tr>
		
		<tr>
			<td>matchreg_stadium</td>
			<th>
				<input type="text" name="matchreg_stadium" id="" />
			</th>
		</tr>
		
		<tr>
			<td>matchreg_event</td>
			<th>
				<!-- <input type="text" name="matchreg_event" id=""/> -->
				<select name="m_select" id="m_select">
					<option value="0" selected="selected">--선택--</option>
					<option value="1">축구</option>
					<option value="2">족구</option>
					<option value="3">농구</option>
					<option value="4">배구</option>
				</select>
			</th>
		</tr>
		
		
		<tr>
			<td>matchreg_date</td>
			<th>
				<input type="text" name="matchreg_date" id="" />
			</th>
		</tr>
		
		<tr>
			<th>matchreg_time</th>
			<td>
				<input type="text" name="matchreg_time" id="" />
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