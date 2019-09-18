<%@page import="java.util.List"%>
<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
<%
String path = request.getContextPath();
%>
<script type="text/javascript" src="<%=path%>/Script/jquery-3.3.1.js"></script>
<script type="text/javascript">

	$(function()
	{		
		//取消按钮点击事件
		$("#btnCancel").click(function()
		{
			location.href="<%=path%>/UserServlet?type=4";
		});
	});
</script>
<style type="text/css">
    body{
        color: white;
    }
td {
	width: 300px;
	height: 50px;
	font-size: 26px;
	font-family: 隶书;
}

input[type="text"] {
	background-color: #9CFFFA;
	font-size:26px; 
}
input {
	width: 250px;
	height: 30px;
}

select {
	width: 220px;
	height: 30px;
}
span {
	font-size: 18px;
}
</style>

</head>
<body>
	<%
		String user_id = request.getParameter("user_id");
		User user=new User();
		List<Object> userList = user.getById(user_id);
		Object[] obj = (Object[]) userList.get(0);//将List数据转换成Object[]
	%>
	<form action="UserServlet?type=2" method="post">
		<table style="width: 700px; margin: 50px auto; border: 10px solid #9bffca;border-style:outset; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>管理员账号：</td>
					<td align="left"><input type="text" name="user_id" value="<%=obj[0]%>"
						readonly="readonly" /><span>不可修改</span></td>
				</tr>
				<tr>
					<td>管理员昵称：</td>
					<td align="left"><input type="text" name="user_name" value="<%=obj[1]%>"
						required /></td>
				</tr>
				<tr>
					<td>管理员姓名：</td>
					<td align="left"><input type="text" name="real_name" value="<%=obj[2]%>"
						required readonly="readonly"/><span>不可修改</span></td>
				</tr>
				<tr>
					<td>管理员密码：</td>
					<td align="left"><input type="text" name="user_pwd" value="<%=obj[3]%>"
						required pattern="^\w{6,}$" title="密码长度不能少于6位" /></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td align="left"><input type="text" name="user_phone" value="<%=obj[4]%>"
						pattern="^1[1-9]\d{9}$" title="手机号码有误" /></td>
				</tr>

			</tbody>

			<tfoot>
				<tr>
					<td><input type="submit" value="确定" id="btnSure" style="background-color: lightblue; border-radius: 20px"/></td>
					<td><input type="button" value="取消" id="btnCancel" style="background-color: lightblue; border-radius: 20px"/></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
