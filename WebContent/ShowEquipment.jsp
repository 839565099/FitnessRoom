<%@page import="java.util.List"%>
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
input[type="submit"] {
    background-color: lightblue; 
    border-radius: 20px

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
a{
color: white;
text-decoration: none;
}
</style>
</head>
<body style="color: white;font-size: 20px">
	<div class="div_container">
		<div class="searchDiv" align="right">
			<form action="<%=path%>/EquipmentServlet?type=5" method="post">
				<span>查询条件：</span> <select name="condition">
					<option value='equipment_name'>器材名称</option>
				
				</select> <span>查询值：</span>
				<input type="text" name="value" /> <input type="submit" value="查询 " />
			</form>
		</div>
		<!-- searchDiv End -->

		<table>
			<thead>
				<tr>
					<th>器材名称</th>
					<th>器材编号</th>
					<th>数量</th>
					<th>购入日期</th>
					<th>总费用</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
				<%
					response.setCharacterEncoding("GB18030");//设置输出数据的编码格式
					request.setCharacterEncoding("GB18030");//设置获取数据的编码格式

					List<Object> list = (List<Object>) request.getAttribute("list");
					if (list != null) {
						for (int i = 0; i < list.size(); i++) {
							Object[] obj;
							obj = (Object[]) list.get(i);
						

							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[2] + "</td><td>" + obj[3]
									 + "</td><td>" + obj[4] + "</td><td>   &nbsp;&nbsp;&nbsp; <a href='" + path
									+ "/EquipmentServlet?type=1&c_id=" + obj[1]
									+ "' class='a_del' onclick='return confirm(\"是否确认删除？\")'>删除</a> </td></tr>");
						}
					}
				%>
			</tbody>


		</table>
	</div>
</body>
</html>