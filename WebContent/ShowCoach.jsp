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
input[type="submit"] {
    background-color: lightblue; 
    border-radius: 20px

}
a{
color: white;
text-decoration: none;
}
input[type="text"] {
	background-color: #9CFFFA;
	font-size:26px; 
}
td:nth-of-type(2n-1) {
	background-color: #352D1F;
	
}
table {
	text-align: center;
	width: 100%;
}
 th{
 background-color: #B1FF7E;
 color:black;
}

</style>
</head>
<body style="color: white; font-size: 20px">
	<div class="div_container">
		<div class="searchDiv" align="right">
			<form action="<%=path%>/CoachServlet?type=5" method="post">
				<span>��ѯ������</span> <select name="condition">
					<option value='coach_id'>�Ǽ�ʱ��</option>
					<option value='coach_num'>����Ա���</option>
					<option value='coach_jb'>����Ա����</option>
					<option value='coach_pnone'>��ϵ��ʽ</option>
					<option value='coach_zt'>����״̬</option>
				</select> <span>��ѯֵ��</span>
				<input type="text" name="value" /> <input type="submit" value="��ѯ " />
			</form>
		</div>
		<!-- searchDiv End -->

		<table>
			<thead>
				<tr>
					<th>�Ǽ�ʱ��</th>
					<th>����Ա���</th>
					<th>����Ա����</th>
					<th>����״̬</th>
					<th>��ϵ��ʽ</th>
					<th>����</th>
				</tr>
			</thead>

			<tbody>
				<%
					response.setCharacterEncoding("GB18030");//����������ݵı����ʽ
					request.setCharacterEncoding("GB18030");//���û�ȡ���ݵı����ʽ

					List<Object> list = (List<Object>) request.getAttribute("list");
					if (list != null) {
						for (int i = 0; i < list.size(); i++) {
							Object[] obj;
							obj = (Object[]) list.get(i);
							String result = obj[3].toString().equals("0") ? "��ְ" : "�ݼ�";
							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[2] + "</td><td>" + result
									+ "</td><td>" + obj[4] + "</td><td><a href='" + path + "/EditCoach.jsp?s_id="
									+ obj[0] + "' class='a_edit'>�༭</a>&nbsp;&nbsp;&nbsp;<a href='" + path + "/CoachServlet?type=1&s_id="
									+ obj[0] + "' class='a_del' onclick='return confirm(\"�Ƿ�ȷ��ɾ����\")'>ɾ��</a></td></tr>");
						}
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
