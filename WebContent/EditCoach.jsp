<%@page import="java.util.List"%>
<%@page import="entity.Coach"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();//��ȡ��Ŀ����
%>
<!doctype html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
<script type="text/javascript" src="<%=path%>/Script/jquery-3.3.1.js"></script>
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
	background-color: #ccf3ff;
	font-size: 26px;
}


input {
	width: 250px;
	height: 30px;
}

span {
	font-size: 17px;
}

select {
	width: 220px;
	height: 30px;
}
</style>
<script type="text/javascript">
	$(function(){		
		$("#cancel").click(function()
				{
			location.href="<%=path%>/CoachServlet?type=4";
		});
	});
</script>

</head>
<body>
	<%
		String s = request.getParameter("s_id");
			Coach coach = new Coach();
			List<Object> seatList = coach.getEntityById(s);
			Object[] obj = (Object[]) seatList.get(0);
	%>
	<form action="<%=path%>/CoachServlet?type=2" method="post">
		<table
			style="width: 700px; margin: 50px auto; border: 10px solid #9bffca; border-style: outset; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>�Ǽ�ʱ�䣺</td>
					<td align="left"><input type="text" name="s_id"
						value="<%=obj[0]%>" readonly="readonly" /><span>�����޸�</span></td>
				</tr>
				<tr>
					<td>����Ա��ţ�</td>
					<td align="left"><input type="text" name="s_num"
						value="<%=obj[1]%>" readonly="readonly" /><span>�����޸�</span></td>
				</tr>
				<tr>
					<td>����Ա����</td>
					<td align="left"><select name="s_section" style="height: 40px;background-color: #ccf3ff;">
							<%
								if (obj[2].toString().equals("��������Ա")) {
							%>
							<option value="��������Ա" selected="selected"><%=obj[2] %></option>
							<option value="�м�����Ա">�м�����Ա</option>
							<option value="�߼�����Ա">�߼�����Ա</option>
							<%
								} else if(obj[2].toString().equals("�м�����Ա")){
							%>
							<option value="�м�����Ա" selected="selected"><%=obj[2] %></option>
							<option value="��������Ա">��������Ա</option>
							<option value="�߼�����Ա">�߼�����Ա</option>
							<%
								}else{
							%>
							<option value="�߼�����Ա" selected="selected"><%=obj[2] %></option>
							<option value="��������Ա">��������Ա</option>
							<option value="�м�����Ա">�м�����Ա</option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>����״̬��</td>
					<td align="left"><select name="s_st" style="height: 40px;background-color: #ccf3ff;">
							<%
								if (obj[3].toString().equals("0")) {
							%>
							<option value="0" selected="selected">��ְ</option>
							<option value="1">�ݼ�</option>
							<%
								} else {
							%>
							<option value="0">�ݼ�</option>
							<option value="1" selected="selected">��ְ</option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>��ϵ��ʽ��</td>
					<td align="left"><input type="text" name="phone"
						value="<%=obj[4]%>" /></td>
				</tr>

			</tbody>

			<tfoot>
				<tr>
					<td><input type="submit" value="ȷ��" id="btnSure"
						style="background-color: lightblue; border-radius: 20px" /></td>
					<td><input type="button" value="ȡ��" id="cancel"
						style="background-color: lightblue; border-radius: 20px" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
