<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();//��ȡ��Ŀ����
%>
<!doctype html>
<html>
<head>
<meta charset="GB18030">
<script type="text/javascript" src="<%=path%>/Script/jquery-3.3.1.js"></script>
<title>Insert title here</title>
<style type="text/css">
td:nth-of-type(2n) {
	background-color: #875177;
	
}
a{
color: white;
text-decoration: none;
}
td:nth-of-type(2n-1) {
	background-color: #352D1F;
}
table {
	text-align: center;
	width: 100%;
}
input[type="text"] {
	background-color: #9CFFFA;
	font-size:26px; 
}
input[type="submit"] {
    background-color: lightblue; 
    border-radius: 20px
}
 th{
 background-color: #B1FF7E;
 color:black;
}

</style>
</head>
<body style="color: white;font-size: 20px">
	<div class="div_container">
		<div class="searchDiv" align="right">
			<form action="<%=path%>/CardServlet?type=5" method="post">
				<span>��ѯ������</span> <select name="condition">
					<option value='card_id'>��Ա�����</option>
					<option value='coach_num'>����Ա���</option>
					<option value='user_name'>��Ա����</option>
					<option value='user_gender'>��Ա�Ա�</option>
					<option value='user_addr'>��ͥסַ</option>
					<option value='card_phone'>��ϵ��ʽ</option>

				</select> <span>��ѯֵ��</span>
				<input type="text" name="value" /> <input type="submit" value="��ѯ " />
			</form>
		</div>
	

		<table>
			<thead>
				<tr>
					<th>��Ա�����</th>
					<th>ָ������Ա���</th>
					<th>��Ա����</th>
					<th>��Ա�Ա�</th>
					<th>��ͥסַ</th>
					<th>��ϵ��ʽ</th>

					<th>����</th>
				</tr>
			</thead>

			<tbody>
				<%
					response.setCharacterEncoding("GB18030");//����������ݵı����ʽ
					request.setCharacterEncoding("GB18030");//���û�ȡ���ݵı����ʽ
					List<Object> list = (List<Object>) request.getAttribute("list");//��ȡservlet��ת����list�����б�
					if (list != null) {
						for (int i = 0; i < list.size(); i++) {
							Object[] obj;
							obj = (Object[]) list.get(i);
							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[6] + "</td><td>" + obj[2] + "</td><td>" + obj[3]
									+ "</td><td>" + obj[4] + "</td><td>" + obj[5] + "</td><td><a href='" + path
									+ "/EditCardMessage.jsp?card_id=" + obj[0] + "' class='a_edit'>�༭</a>&nbsp;&nbsp;&nbsp;<a href='" + path
									+ "/CardServlet?type=1&card_id=" + obj[0]
									+ "' class='a_del' onclick='return confirm(\"�Ƿ�ȷ��ɾ����\")'>ɾ��</a></td></tr>");
						}
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
