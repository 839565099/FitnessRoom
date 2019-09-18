<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Style/Login.css" />
<link href="css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="Script/jquery-3.3.1.js"></script>
<script type="text/javascript">
function CZ() {
	$("#uname").attr("value", "");
	$("#password").attr("value", "");
}
function return1() {
	location.href="/FitnessRoom/Main01.jsp";
}
function in1(is) {
	is.style.cursor="pointer";
}

</script>
<%String path=request.getContextPath(); %>
</head>
<body>
<i class="fa fa-mail-reply" style="font-size: 40px;color: white" onclick="return1()" onmouseover="in1(this)" ></i>
<div class=divlogin>
		<form action="CheckServlet" method="post">
			<table class="table1">
				<tr>
					<td><i class="fa fa-address-book" style="font-size: 25px"></i>用户名：</td>
					<td><input type="text" value="zyq123456" name="user_id" id="uname"
						class="input1">&nbsp;&nbsp;<span>输入用户名</span></td>
				</tr>
				<tr>
					<td><i class="fa fa-diamond" style="font-size: 25px"></i>密码：</td>
					<td><input type="password" name="user_pwd" value="444444" id="password"
						class="input1">&nbsp;&nbsp;<span>输入密码</span></td>
				</tr>
				<tr>
					<td ><input type="submit" value="登陆" onmouseover="in1(this)"
						class="btnLogin"></td>
					<td ><input type="reset" value="重置" onclick="CZ()" onmouseover="in1(this)"
						class="btnLogin"></td>

				</tr>
			</table>

		</form>
	</div>
</body>
</html>