<%@page import="java.util.List"%>
<%@page import="entity.Coach"%>
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
	<form action="<%=path%>/CardServlet?type=3" method="post" class="Form">
		<table
			style="width: 700px; margin: 50px auto; border: 10px solid #786899;border-style:double; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>˽�˽�����ţ�</td>
					<td><select name="s_id" style="height: 40px;width:250px;background-color: #ccf3ff;font-size:26px; ">
							<%
								Coach c = new Coach();
								List<Object> list = c.getNoUseSeat();
								for (int i = 0; i < list.size(); i++) {
									Object[] object = (Object[]) list.get(i);
									out.write("<option value='" + object[0] + "'>" + object[1] + "</option>");
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>��Ա���ƣ�</td>
					<td><input type="text" name="user_name" required /></td>
				</tr>
				<tr>
					<td>��Ա�Ա�</td>
					<td><select name="user_gender" style="height: 40px;width:250px;background-color: #ccf3ff;font-size:26px; ">
							<option value="��">��</option>
							<option value="Ů">Ů</option>
					</select></td>
				</tr>
				<tr>
					<td>��ͥסַ��</td>
					<td><input type="text" name="user_addr" required /></td>
				</tr>
				<tr>
					<td>��ϵ�绰��</td>
					<td><input type="text" name="c_num" required /></td>
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
