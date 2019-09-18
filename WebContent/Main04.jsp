<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/25
  Time: ���� 1:14
--%>
<%@ page contentType="text/html;charset=GB18030" language="java" %>
<html>
<head>
    <meta charset="GB18030">
    <title>��������</title>
    <link href="Style/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <style>
        .c {
            display: flex;
            width: 100%;
            padding: 2% 2%;
            box-sizing: border-box;
            height: 100%;
        }

        .b {
            flex: 1;
            overflow: hidden;
            transition: 1s;
            margin:15px;
            box-shadow: 0 30px 30px rgba(0, 0, 0, 0.7);
        }

        .b > img {
            width: 100%;
            height: 90%;
            object-fit: cover;
            transition: 1s;
        }

        .b > span {
            font-size: 30px;
            display:block;
            text-align: center;
            height: 85px;
            line-height: 90px;
            background: linear-gradient(to right, #ade5ff, #83c1ff, #2baab3);
        }

        .b:hover {
            flex:  50%;
        }

        .b:hover > img {
            width: 100%;
            height: 100%;
        }

    </style>
</head>


<body id="page1" >
<!-- header -->
<div id="header" style="height: 270px;background: linear-gradient(to top, #eff3eb,#b46736,#280f02 );">
    <div class="container" style="text-align: center;">
        <h1 style="font-size: 75px; font-family:Algerian;color:#ff7800">we can give you</h1><br><h1 style="font-family:Algerian">much more than others</h1>
        <ul class="nav" style="width: 1500px;">
            <li><a href="Main01.jsp" class="first current"><i class="fa fa-home" style="font-size: 30px;color: black;"></i>��ҳ</a></li>
            <li><a href="Main02-1.jsp"><i class="fa fa-adjust" style="font-size: 30px;color: black;"></i>��ʳ��ѯ</a></li>
            <li><a href="Main03.jsp"><i class="fa fa-calendar" style="font-size: 30px;color: black;"></i>����ƻ�</a></li>
            <li><a href="Main04.jsp"><i class="fa fa-address-book" style="font-size: 30px;color: black;"></i>��������</a></li>
            <li><a href="Login.jsp"><i class="fa fa-user-circle" style="font-size: 30px;color: black;"></i>��������</a></li>
        </ul>
    </div>
</div>



<div id="content" style="height: 100%">
    <div class="c">
        <div class="b">
            <img src="Images/01.jpg">
            <span>װ��</span>
        </div>
        <div class="b">
            <img src="Images/08.jpg">
            <span>����</span>
        </div>
        <div class="b">
            <img src="Images/05.jpg">
            <span>�ƹ�</span>
        </div>
        <div class="b">
            <img src="Images/03.jpg">
            <span>������Ӿ��</span>
        </div>
        <div class="b">
            <img src="Images/02.jpg">
            <span>���е���</span>
        </div>

        <div class="b">
            <img src="Images/07.jpg">
            <span>�ܲ���</span>
        </div>

        <div class="b">
            <img src="Images/06.jpg">
            <span>����</span>
        </div>

    </div>

</div>


<!-- footer -->
<div id="footer">
    <div class="container">
        <div class="indent">
            <div class="fleft"><h4>�����ʵ��ѧ��ͨѧԺ</h4></div>
            <div class="fright">
                ��ϵ��ʽ��18888888888 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����֧�֣�<a
                    href="http://www.baidu.com/"
                    title="�ٶ�һ��">�ٶ�~~~~</a>

            </div>
        </div>
    </div>
</div>
</body>
</html>