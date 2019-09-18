<%@page import="entity.Card"%>
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
<script type="text/javascript">
	$(function()
	{		
		//取消按钮点击事件
		$("#btnCancel").click(function()
		{
			location.href="<%=path%>/CardServlet?type=4";
		});
	});
</script>
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

input {
	width: 250px;
	height: 30px;
}

select {
	width: 220px;
	height: 30px;
}
input[type="text"] {
	background-color: #9CFFFA;
	font-size:26px; 
}
span {
	font-size: 17px;
}
</style>

</head>
<body>
	<%
		String card_id = request.getParameter("card_id");
		   Card card=new Card();
			List<Object> cardList = card.getEntityById(card_id);//根据ID获取Card数据
			Object[] obj = (Object[]) cardList.get(0);//将List数据转换成Object[]
	%>
	<form action="<%=path%>/CardServlet?type=2" method="post">
		<table style="width: 700px; margin: 50px auto; border: 10px solid #9bffca;border-style:outset; border-radius: 30px; text-align: center;">
			<tbody>
				<tr>
					<td>会员卡编号：</td>
					<td align="left"><input type="text" name="card_id" value="<%=obj[0]%>"
						readonly="readonly" /><span>不可修改</span></td>
				</tr>
				<tr>
					<td>教练员编号：</td>
					<td align="left"><select name="s_id" style="height: 40px;width:250px;background-color: #ccf3ff;font-size:26px; ">
							<%
								Coach c = new Coach();
								List<Object> list =c.getData();
								for (int i = 0; i < list.size(); i++) {
									Object[] object = (Object[]) list.get(i);
									if (obj[1].equals(object[0])) {
										out.write("<option value='" + object[0] + "' selected='selected'>" + object[1] + "</option>");
									} else {
										out.write("<option value='" + object[0] + "'>" + object[1] + "</option>");
									}
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>会员姓名：</td>
					<td align="left"> <input type="text" name="user_name" value="<%=obj[2]%>" /></td>
				</tr>
				<tr>
					<td>用户性别：</td>
					<td align="left"><select name="user_gender" style="height: 40px;width:250px;background-color: #ccf3ff;font-size:26px; ">
							<%
								if (obj[3].equals("男")) {
							%>
							<option value="男" selected="selected">男</option>
							<option value="女">女</option>
							<%
								} else {
							%>
							<option value="男">男</option>
							<option value="女" selected="selected">女</option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td>家庭住址：</td>
					<td align="left"><input type="text" name="user_addr" value="<%=obj[4]%>"
						required /></td>
				</tr>
				<tr>
					<td>联系方式：</td>
					<td align="left"><input type="text" name="c_num" value="<%=obj[5]%>"
						required /><span>不可修改</span></td>
				</tr>

			</tbody>

			<tfoot>
				<tr>
					<td><input type="submit" value="确定" id="btnSure" style="background-color: lightblue; border-radius: 20px"/></td>
					<td><input type="button" value="取消" id="btnCancel" style="background-color: lightblue; border-radius: 20px"/></td>
				</tr>
			</tfoot>
		</table>
	</form>
</body>
</html>
