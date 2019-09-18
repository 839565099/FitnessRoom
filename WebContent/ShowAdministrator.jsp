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
				<span>查询条件：</span> <select name="search">
					<option value='user_id'>管理员账号</option>
					<option value='user_name'>管理员昵称</option>
					<option value='real_name'>真实姓名</option>
				</select> <span>查询值：</span>
				<input type="text" name="value" /> <input type="submit" value="查询 " />
			</form>
		</div>
		

		<table>
			<thead>
				<tr>
					<th>管理员账号</th>
					<th>管理员昵称</th>
					<th>管理员姓名</th>
					<th>管理员密码</th>
					<th>联系方式</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
				<%
					response.setCharacterEncoding("GB18030");//设置输出数据的编码格式
					request.setCharacterEncoding("GB18030");//设置获取数据的编码格式

					List<Object> list = (List<Object>) request.getAttribute("list");//获取servlet端转发的list数据列表
					if (list != null) //循环数据列表，生成表格行
					{
						for (int i = 0; i < list.size(); i++) {
							Object[] obj;
							obj = (Object[]) list.get(i);
							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[2]
									+ "</td><td>" + obj[3] + "</td><td>" + obj[4] + "</td><td><a href='" + path
									+ "/EditAdministrator.jsp?user_id=" + obj[0] + "' class='a_edit'>编辑</a>&nbsp;&nbsp;&nbsp;<a href='UserServlet?type=1&user_id=" + obj[0]
									+ "' class='a_del' onclick='return confirm(\"是否确认删除？\")'>删除</a></td></tr>");
						}
					}
				%>
			</tbody>

		</table>
	</div>
</body>
</html>
