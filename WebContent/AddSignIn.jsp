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
		<legend>打卡入场</legend>
		<form action="<%=path %>/SignInServlet?type=3" method="post" class="Form">
			<table style="margin: 10px 0;">
				<tbody>
					<tr>
						<td align="center">会员卡卡号：</td>
						<td align="left"><select name="card_id" style="height: 40px;width:300px;background-color: #ccf3ff;font-size:20px; ">
								<%
									Card card = new Card();
									List<Object> listCard = card.getData();
									for (int i = 0; i < listCard.size(); i++) {
										Object[] object = (Object[]) listCard.get(i);
										out.write("<option value='" + object[0] + "'>" + object[0] + "(" + object[2] + ")</option>");
									}
								%>
						</select> <input type="submit" value="签到" id="btnSure" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</fieldset>

	<div class="div_container">
		<fieldset>
			<legend>场内人员</legend>
			<div class="searchDiv" align="right">
				<form action="<%=path%>/SignInServlet?type=5" method="post">
					<span>查询条件：</span> <select name="condition">
						<option value='sign_id'>入场记录</option>
						<option value='card_id'>会员卡卡号</option>
						<option value='user_name'>会员姓名</option>
						<option value='card_phone'>联系方式</option>
					</select> <span>查询值：</span>
					<input type="text" name="value" /> <input type="submit" value="查询 " />
				</form>
			</div>
			

			<table>
				<thead>
					<tr>
						<th>入场记录</th>
						<th>会员卡卡号</th>
						<th>会员姓名</th>
						<th>联系方式</th>
						<th>打卡时间</th>
						<th>是否离场</th>

						<th>操作</th>
					</tr>
				</thead>

				<tbody>
					<%
						response.setCharacterEncoding("GB18030");//设置输出数据的编码格式
						request.setCharacterEncoding("GB18030");//设置获取数据的编码格式

						List<Object> list = (List<Object>) request.getAttribute("list");
						if (list != null) //循环数据列表，生成表格行
						{
							for (int i = 0; i < list.size(); i++) {
								Object[] obj;
								obj = (Object[]) list.get(i);
								String result = obj[3] == null ? "未离场" : "已离场";
								out.print("<tr><td>" + obj[0] + "</td><td>" + obj[1] + "</td><td>" + obj[5] + "</td><td>" + obj[4]
										+ "</td><td>" + obj[2] + " </td><td>" + result + "</td><td><a href='" + path
										+ "/SignInServlet?type=10&fixed_id=" + obj[0]
										+ "' class='a_del' onclick='return confirm(\"是否确认离场？\")'>离场</a></td></tr>");
							}
						}
					%>
				</tbody>



			</table>
		</fieldset>
	</div>
</body>
</html>
