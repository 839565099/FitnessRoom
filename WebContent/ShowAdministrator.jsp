<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
<style type="text/css">
td:nth-of-type(2n) {
	background-color: #875177;
	
}
td:nth-of-type(2n-1) {
	background-color: #352D1F;
	
}
table {
	text-align: center;
	width: 100%;
}
input[type="submit"] {
    background-color: lightblue; 
    border-radius: 20px

}
input[type="text"] {
	background-color: #9CFFFA;
	font-size:26px; 
}
a{
color: white;
text-decoration: none;
}
 th{
 background-color: #B1FF7E;
 color:black;
}

</style>
</head>
<body style="color: white;font-size: 20px">
<%
	String path = request.getContextPath();
%>
	<div class="div_container">
		<div class="searchDiv" align="right">
			<form action="<%=path%>/UserServlet?type=5" method="post">
				<span>��ѯ������</span> <select name="search">
					<option value='user_id'>����Ա�˺�</option>
					<option value='user_name'>����Ա�ǳ�</option>
					<option value='real_name'>��ʵ����</option>
				</select> <span>��ѯֵ��</span>
				<input type="text" name="value" /> <input type="submit" value="��ѯ " />
			</form>
		</div>
		

		<table>
			<thead>
				<tr>
					<th>����Ա�˺�</th>
					<th>����Ա�ǳ�</th>
					<th>����Ա����</th>
					<th>����Ա����</th>
					<th>��ϵ��ʽ</th>
					<th>����</th>
				</tr>
			</thead>

			<tbody>
				<%
					response.setCharacterEncoding("GB18030");//����������ݵı����ʽ
					request.setCharacterEncoding("GB18030");//���û�ȡ���ݵı����ʽ

					List<Object> list = (List<Object>) request.getAttribute("list");//��ȡservlet��ת����list�����б�
					if (list != null) //ѭ�������б����ɱ����
					{
						for (int i = 0; i < list.size(); i++) {
							Object[] obj;
							obj = (Object[]) list.get(i);
							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[2]
									+ "</td><td>" + obj[3] + "</td><td>" + obj[4] + "</td><td><a href='" + path
									+ "/EditAdministrator.jsp?user_id=" + obj[0] + "' class='a_edit'>�༭</a>&nbsp;&nbsp;&nbsp;<a href='UserServlet?type=1&user_id=" + obj[0]
									+ "' class='a_del' onclick='return confirm(\"�Ƿ�ȷ��ɾ����\")'>ɾ��</a></td></tr>");
						}
					}
				%>
			</tbody>

		</table>
	</div>
</body>
</html>
