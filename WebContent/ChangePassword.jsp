<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<script type="text/javascript" src="Script/jquery-3.3.1.js"></script>
<title>Insert title here</title>
<script>
	function checkPwd(){
		if($("#new").val()==$("#se").val()){
			return true;
		}
		alert("两次输入密码不一~~~");
		return false;
	}
</script>
<style type="text/css">
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
input[type="password"] {
	background-color: #9CFFFA;
	font-size:26px;
}


</style>

</head>
<body style="color: white;font-size: 20px">
<%
	String path = request.getContextPath();
%>
	<form action="UserServlet?type=6"  method="post"  >
		<table style="width: 700px; margin: 50px auto; border: 10px solid #786899;border-style:double; border-radius: 30px; text-align: center;">
			<tbody>
				<tr><td>原始密码:</td><td><input  type="password"  name="OldPwd" required /></td></tr>
				<tr><td>新  密  码：</td><td><input type="password" id="new" name="NewPwd" required /></td></tr>
				<tr><td>重复密码:</td><td><input type="password" id="se" name="RepPwd" onblur="retrun checkPwd();" required /></td></tr>
				<tr><td><input type="submit" class="btnSure" style="background-color: lightblue; border-radius: 20px" value="提交"/></td>
				<td>		
					<input type="reset" style="background-color: lightblue; border-radius: 20px" value="重置"/>
				</td></tr>
			</tbody>
		</table>
	</form>
	
</body>
</html>