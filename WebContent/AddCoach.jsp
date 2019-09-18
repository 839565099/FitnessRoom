<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
<style type="text/css">
td {
	width: 300px;
	height: 50px;
	font-size: 32px;
	font-family: 隶书;
}

input {
	width: 250px;
	height: 30px;
}
select {
	width: 220px;
	height: 30px;
}
input[type="text"] {
	background-color: #ccf3ff;
	font-size:26px; 
}
</style>
<script type="text/javascript" src="<%=path%>/Script/jquery-3.3.1.js"></script>
</head>
<body style="color: white;font-size: 20px">
<%
int sum = 0;
if (application.getAttribute("num") == null) {
	sum += 1;
	application.setAttribute("num", sum);
} else {
	sum = (int) application.getAttribute("num");
	sum += 1;
	application.setAttribute("num", sum);
}
 %>

	<form action="CoachServlet?type=3" method="post" class="Form">
		<table
			style="width: 700px; margin: 50px auto; border: 10px solid #786899;border-style:double; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>教练员编号：</td>
					<td><input type="text" name="num" value="0<%=sum %>"  /></td>
				</tr>
				<tr>
					<td>教练员级别：</td>
					<td><select name="jb" style="height: 40px;width:250px;background-color: #ccf3ff;font-size:26px; ">
							<option value="初级教练员">初级教练员</option>
							<option value="中级教练员">中级教练员</option>
							<option value="高级教练员">高级教练员</option>
					</select></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td><input type="text" name="phone" /></td>
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
