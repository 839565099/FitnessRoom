<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030" >
<title>FintessRoom</title>
<link rel="stylesheet" type="text/css" href="Style/homepage.css" />
<link href="css/font-awesome.min.css" rel="stylesheet">
<script type="text/javascript" src="Script/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){
			$(".siderbar>li>ul").slideUp();
			$(".siderbar>li>span").mouseover("click",function(){
				$(".siderbar>li>ul").slideUp();
				$(this).next().slideDown();
			});
		$(".siderbar>li>span").eq(1).trigger("click");
		});

</script>
</head>
<body>
<%
	String path = request.getContextPath();
%>
<jsp:include page="Head.jsp"></jsp:include>
<div class="div_1">
		<ul class="siderbar">


			<li><span><i class="fa fa-address-book" style="font-size: 25px"></i>����Ա��Ϣ����</span>
				<ul>

					<li><a href="<%=path %>/AddAdministrator.jsp" target="mainFrame"><i
							class="fa fa-book" style="font-size: 20px"></i>��ӹ���Ա��Ϣ</a>
					</li>
					<li><a href="UserServlet?type=4" target="mainFrame"><i
							class="fa fa-cog" style="font-size: 20px"></i>�鿴����Ա��Ϣ</a>
					</li>
					<li><a href="<%=path %>/ChangePassword.jsp" target="mainFrame"><i
							class="fa fa-hourglass" style="font-size: 20px"></i>�޸�����</a>
					</li>
				</ul>
		   </li>
			<li><span><i class="fa fa-child" style="font-size: 25px"></i>����Ա��Ϣ����</span>
				<ul>
					<li><a href="<%=path %>/AddCoach.jsp" target="mainFrame"><i
							class="fa fa-key" style="font-size: 20px"></i>˽�̵Ǽ�</a>
					</li>
					<li><a href="CoachServlet?type=4" target="mainFrame"><i
							class="fa fa-hourglass" style="font-size: 20px"></i>�鿴ȫ������Ա</a>
					</li>
				</ul>
			</li>
			<li><span><i class="fa fa-vcard-o" style="font-size: 25px"></i>��Ա����Ϣ����</span>
				<ul>
					<li><a href="<%=path %>/AddMemberCard.jsp" target="mainFrame"><i
							class="fa fa-plus-square" style="font-size: 20px"></i>��Ա��ע��</a>
					</li>
					<li><a href="CardServlet?type=4" target="mainFrame"><i
							class="fa fa-reorder" style="font-size: 20px"></i>�鿴��Ա����Ϣ</a>
					</li>
				</ul>
			</li>
			<li><span><i class="fa fa-tasks" style="font-size: 25px"></i>����Ϣ����</span>
				<ul>
					<li><a href="SignInServlet?type=6" target="mainFrame"><i
							class="fa fa-smile-o" style="font-size: 20px"></i>�򿨳������</a>
					</li>
					<li><a href="SignInServlet?type=4" target="mainFrame"><i
							class="fa fa-hourglass" style="font-size: 20px"></i>�鿴ѵ����Ϣ</a>
					</li>
				</ul>
			</li>
			<li><span><i class="fa fa-cubes" style="font-size: 25px"></i>������Ϣ����</span>
				<ul>
					<li><a href="<%=path %>/AddEquipment.jsp" target="mainFrame"><i
							class="fa fa-sticky-note-o" style="font-size: 20px"></i>���Ĺ���</a>
					</li>
					<li><a href="EquipmentServlet?type=4" target="mainFrame"><i
							class="fa fa-tag" style="font-size: 20px"></i>�鿴��������</a>
					</li>
				</ul>
			</li>
			<li><span><i class="fa fa-cog" style="font-size: 25px"></i>ϵͳ���ܲ���</span>
				<ul>
					
					<li><a href="<%=path %>/ESC.jsp"><i
							class="fa fa-remove" style="font-size: 20px"></i>�˳�ϵͳ</a>
					</li>
				</ul>
			</li>

		</ul>

	</div>


	<section class="container">
		<iframe name="mainFrame" frameborder="0"> </iframe>
	</section>

<jsp:include page="Foot.jsp"></jsp:include>


</body>
</html>