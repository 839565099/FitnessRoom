<%@page import="java.util.List"%>
<%@page import="entity.Card"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
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
td:nth-of-type(2n-1) {
	background-color: #352D1F;
	
}
a{
color: white;
text-decoration: none;
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
    border-radius: 20px;
	width: 120px;


}
 

</style>
</head>
<body style="color: white; font-size: 20px">

	<fieldset>
		<legend>���볡</legend>
		<form action="<%=path %>/SignInServlet?type=3" method="post" class="Form">
			<table style="margin: 10px 0;">
				<tbody>
					<tr>
						<td align="center">��Ա�����ţ�</td>
						<td align="left"><select name="card_id" style="height: 40px;width:300px;background-color: #ccf3ff;font-size:20px; ">
								<%
									Card card = new Card();
									List<Object> listCard = card.getData();
									for (int i = 0; i < listCard.size(); i++) {
										Object[] object = (Object[]) listCard.get(i);
										out.write("<option value='" + object[0] + "'>" + object[0] + "(" + object[2] + ")</option>");
									}
								%>
						</select> <input type="submit" value="ǩ��" id="btnSure" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</fieldset>

	<div class="div_container">
		<fieldset>
			<legend>������Ա</legend>
			<div class="searchDiv" align="right">
				<form action="<%=path%>/SignInServlet?type=5" method="post">
					<span>��ѯ������</span> <select name="condition">
						<option value='sign_id'>�볡��¼</option>
						<option value='card_id'>��Ա������</option>
						<option value='user_name'>��Ա����</option>
						<option value='card_phone'>��ϵ��ʽ</option>
					</select> <span>��ѯֵ��</span>
					<input type="text" name="value" /> <input type="submit" value="��ѯ " />
				</form>
			</div>
			

			<table>
				<thead>
					<tr>
						<th>�볡��¼</th>
						<th>��Ա������</th>
						<th>��Ա����</th>
						<th>��ϵ��ʽ</th>
						<th>��ʱ��</th>
						<th>�Ƿ��볡</th>

						<th>����</th>
					</tr>
				</thead>

				<tbody>
					<%
						response.setCharacterEncoding("GB18030");//����������ݵı����ʽ
						request.setCharacterEncoding("GB18030");//���û�ȡ���ݵı����ʽ

						List<Object> list = (List<Object>) request.getAttribute("list");
						if (list != null) //ѭ�������б����ɱ����
						{
							for (int i = 0; i < list.size(); i++) {
								Object[] obj;
								obj = (Object[]) list.get(i);
								String result = obj[3] == null ? "δ�볡" : "���볡";
								out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[5] + "</td><td>" + obj[4]
										+ "</td><td>" + obj[2] + " </td><td>" + result + "</td><td><a href='" + path
										+ "/SignInServlet?type=10&fixed_id=" + obj[0]
										+ "' class='a_del' onclick='return confirm(\"�Ƿ�ȷ���볡��\")'>�볡</a></td></tr>");
							}
						}
					%>
				</tbody>



			</table>
		</fieldset>
	</div>
</body>
</html>
