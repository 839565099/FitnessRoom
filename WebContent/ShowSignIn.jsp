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
}
input[type="submit"] {
    background-color: lightblue; 
    border-radius: 20px

}
table {
	width: 100%;
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
			<form action="<%=path%>/SignInServlet" method="post">
				<span>查询条件：</span> <select name="condition">
					<option value='sign_id'>入场记录</option>
					<option value='user_name'>会员姓名</option>
					<option value='card_id'>会员卡号</option>
					<option value='card_phone'>联系方式</option>
				</select> <span>查询值：</span> <input type="hidden" name="type" value="5" /> <input
					type="text" name="value" /> <input type="submit" value="查询 " />
			</form>
		</div>
		

		<table>
			<thead>
				<tr>
					<th>入场纪录</th>
					<th>会员卡卡号</th>
					<th>会员姓名</th>
					<th>联系方式</th>
					<th width="300px">入场时间</th>
					<th>出场时间</th>

					<th>操作</th>
				</tr>
			</thead>

			<tbody>
				<%
					response.setCharacterEncoding("GB18030");
					request.setCharacterEncoding("GB18030");

					List<Object> list = (List<Object>) request.getAttribute("list");//获取servlet端转发的list数据列表
					if (list != null){
						for (int i = 0; i < list.size(); i++) {
							Object[] obj;
							obj = (Object[]) list.get(i);
							String result = obj[3] == null ? "未离场" : obj[3].toString() ;
							out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[5] + "</td><td>" + obj[4]
									+ "</td><td>" + obj[2] + "</td><td>" + result + "</td><td><a href='" + path
									+ "/SignInServlet?type=1&fixed_id=" + obj[0]
									+ "' class='a_del' onclick='return confirm(\"是否确认删除？\")'>删除</a></td></tr>");
						}
					}
				%>
			</tbody>


		</table>
	</div>
</body>
</html>
