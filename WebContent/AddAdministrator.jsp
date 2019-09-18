<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="GB18030">
<title>Insert title here</title>
<style type="text/css">
td {
	width: 300px;
	height: 50px;
	font-size: 32px;
	font-family: 隶书;
}

input[type="text"] {
	background-color: #9CFFFA;
	font-size: 26px;
}

input {
	width: 250px;
	height: 30px;
}
</style>

</head>
<body style="color: white;font-size: 20px">
	<%
		String path = request.getContextPath();
	%>

	<form action="UserServlet?type=3" method="post" class="Form">
		<table
			style="width: 700px; margin: 50px auto; border: 10px solid #786899; border-style: double; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>管理员账号：</td>
					<td><input type="text" name="user_id" required /></td>
				</tr>

				<tr>
					<td>管理员昵称：</td>
					<td><input type="text" name="user_name" required /></td>
				</tr>
				<tr>
					<td>管理员姓名：</td>
					<td><input type="text" name="real_name" required /></td>
				</tr>
				<tr>
					<td>管理员密码：</td>
					<td><input type="password" name="user_pwd" required
						pattern="^\w{6,}$" title="密码长度不能少于6位" /></td>
				</tr>
				<tr>
					<td>联系电话：</td>
					<td><input type="text" name="user_phone"
						pattern="^1[1-9]\d{9}$" title="手机号码有误" /></td>
				</tr>

			</tbody>

			<tfoot>
				<tr>
					<td><input
						style="background-color: lightblue; border-radius: 20px"
						type="submit" value="确定" id="btnSure" /></td>
					<td><input
						style="background-color: lightblue; border-radius: 20px"
						type="reset" value="取消" id="btnCancel" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>