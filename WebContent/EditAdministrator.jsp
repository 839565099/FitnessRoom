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
		//ȡ����ť����¼�
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
	font-family: ����;
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
		Object[] obj = (Object[]) userList.get(0);//��List����ת����Object[]
	%>
	<form action="UserServlet?type=2" method="post">
		<table style="width: 700px; margin: 50px auto; border: 10px solid #9bffca;border-style:outset; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>����Ա�˺ţ�</td>
					<td align="left"><input type="text" name="user_id" value="<%=obj[0]%>"
						readonly="readonly" /><span>�����޸�</span></td>
				</tr>
				<tr>
					<td>����Ա�ǳƣ�</td>
					<td align="left"><input type="text" name="user_name" value="<%=obj[1]%>"
						required /></td>
				</tr>
				<tr>
					<td>����Ա������</td>
					<td align="left"><input type="text" name="real_name" value="<%=obj[2]%>"
						required readonly="readonly"/><span>�����޸�</span></td>
				</tr>
				<tr>
					<td>����Ա���룺</td>
					<td align="left"><input type="text" name="user_pwd" value="<%=obj[3]%>"
						required pattern="^\w{6,}$" title="���볤�Ȳ�������6λ" /></td>
				</tr>
				<tr>
					<td>��ϵ��ʽ��</td>
					<td align="left"><input type="text" name="user_phone" value="<%=obj[4]%>"
						pattern="^1[1-9]\d{9}$" title="�ֻ���������" /></td>
				</tr>

			</tbody>

			<tfoot>
				<tr>
					<td><input type="submit" value="ȷ��" id="btnSure" style="background-color: lightblue; border-radius: 20px"/></td>
					<td><input type="button" value="ȡ��" id="btnCancel" style="background-color: lightblue; border-radius: 20px"/></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
