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
input[type="text"] {
	background-color: #9CFFFA;
	font-size:26px; 
}
</style>
<script type="text/javascript" src="<%=path%>/Script/jquery-3.3.1.js"></script>
</head>
<body style="color: white;font-size: 20px">
<%
int car_num = 0;
if (application.getAttribute("num") == null) {
	car_num += 1;
	application.setAttribute("num", car_num);
} else {
	car_num = (int) application.getAttribute("num");
	car_num += 1;
	application.setAttribute("num", car_num);
}
 %>
	<form action="EquipmentServlet?type=3" method="post" class="Form">
		<table 	style="width: 700px; margin: 50px auto; border: 10px solid #786899;border-style:double; border-radius: 30px; text-align: center;">
			<tbody>
			<tr>
					<td >器材名称：</td>
					<td><input type="text" name="uname" /></td>
				</tr>
				<tr>
					<td >器材编号：</td>
					<td><input type="text" name="card_id" value="<%=car_num%>"/></td>
				</tr>
				<tr>
					<td >购入数量：</td>
					<td><input type="text" name="c_num"  /></td>
				</tr>
				<tr>
					<td >总支出：</td>
					<td><input type="text" name="price"  />元</td>
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
