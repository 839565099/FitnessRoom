<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();//获取项目名称
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
				<span>查询条件：</span> <select name="condition">
					<option value='coach_id'>登记时间</option>
					<option value='coach_num'>教练员编号</option>
					<option value='coach_jb'>教练员级别</option>
					<option value='coach_pnone'>联系方式</option>
					<option value='coach_zt'>工作状态</option>
				</select> <span>查询值：</span>
				<input type="text" name="value" /> <input type="submit" value="查询 " />
			</form>
		</div>
		<!-- searchDiv End -->

		<table>
			<thead>
				<tr>
					<th>登记时间</th>
					<th>教练员编号</th>
					<th>教练员级别</th>
					<th>工作状态</th>
					<th>联系方式</th>
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
							String result = obj[3].toString().equals("0") ? "在职" : "休假";
							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[2] + "</td><td>" + result
									+ "</td><td>" + obj[4] + "</td><td><a href='" + path + "/EditCoach.jsp?s_id="
									+ obj[0] + "' class='a_edit'>编辑</a>&nbsp;&nbsp;&nbsp;<a href='" + path + "/CoachServlet?type=1&s_id="
									+ obj[0] + "' class='a_del' onclick='return confirm(\"是否确认删除？\")'>删除</a></td></tr>");
						}
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
