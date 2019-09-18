<%@page import="java.util.List"%>
<%@page import="entity.Coach"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();//获取项目名称
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
	font-family: 隶书;
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
					<td>登记时间：</td>
					<td align="left"><input type="text" name="s_id"
						value="<%=obj[0]%>" readonly="readonly" /><span>不可修改</span></td>
				</tr>
				<tr>
					<td>教练员编号：</td>
					<td align="left"><input type="text" name="s_num"
						value="<%=obj[1]%>" readonly="readonly" /><span>不可修改</span></td>
				</tr>
				<tr>
					<td>教练员级别：</td>
					<td align="left"><select name="s_section" style="height: 40px;background-color: #ccf3ff;">
							<%
								if (obj[2].toString().equals("初级教练员")) {
							%>
							<option value="初级教练员" selected="selected"><%=obj[2] %></option>
							<option value="中级教练员">中级教练员</option>
							<option value="高级教练员">高级教练员</option>
							<%
								} else if(obj[2].toString().equals("中级教练员")){
							%>
							<option value="中级教练员" selected="selected"><%=obj[2] %></option>
							<option value="初级教练员">初级教练员</option>
							<option value="高级教练员">高级教练员</option>
							<%
								}else{
							%>
							<option value="高级教练员" selected="selected"><%=obj[2] %></option>
							<option value="初级教练员">初级教练员</option>
							<option value="中级教练员">中级教练员</option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>工作状态：</td>
					<td align="left"><select name="s_st" style="height: 40px;background-color: #ccf3ff;">
							<%
								if (obj[3].toString().equals("0")) {
							%>
							<option value="0" selected="selected">在职</option>
							<option value="1">休假</option>
							<%
								} else {
							%>
							<option value="0">休假</option>
							<option value="1" selected="selected">在职</option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td align="left"><input type="text" name="phone"
						value="<%=obj[4]%>" /></td>
				</tr>

			</tbody>

			<tfoot>
				<tr>
					<td><input type="submit" value="确定" id="btnSure"
						style="background-color: lightblue; border-radius: 20px" /></td>
					<td><input type="button" value="取消" id="cancel"
						style="background-color: lightblue; border-radius: 20px" /></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
