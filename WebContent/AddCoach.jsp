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
	font-family: ����;
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
					<td>����Ա��ţ�</td>
					<td><input type="text" name="num" value="0<%=sum %>"  /></td>
				</tr>
				<tr>
					<td>����Ա����</td>
					<td><select name="jb" style="height: 40px;width:250px;background-color: #ccf3ff;font-size:26px; ">
							<option value="��������Ա">��������Ա</option>
							<option value="�м�����Ա">�м�����Ա</option>
							<option value="�߼�����Ա">�߼�����Ա</option>
					</select></td>
				</tr>
				<tr>
					<td>��ϵ��ʽ��</td>
					<td><input type="text" name="phone" /></td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td><input
						style="background-color: lightblue; border-radius: 20px"
						type="submit" value="ȷ��" id="btnSure" /></td>
					<td><input
						style="background-color: lightblue; border-radius: 20px"
						type="reset" value="ȡ��" id="btnCancel" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
