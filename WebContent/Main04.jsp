<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/25
  Time: 下午 1:14
--%>
<%@ page contentType="text/html;charset=GB18030" language="java" %>
<html>
<head>
    <meta charset="GB18030">
    <title>健身房环境</title>
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
            <li><a href="Main01.jsp" class="first current"><i class="fa fa-home" style="font-size: 30px;color: black;"></i>主页</a></li>
            <li><a href="Main02-1.jsp"><i class="fa fa-adjust" style="font-size: 30px;color: black;"></i>饮食查询</a></li>
            <li><a href="Main03.jsp"><i class="fa fa-calendar" style="font-size: 30px;color: black;"></i>健身计划</a></li>
            <li><a href="Main04.jsp"><i class="fa fa-address-book" style="font-size: 30px;color: black;"></i>健身房环境</a></li>
            <li><a href="Login.jsp"><i class="fa fa-user-circle" style="font-size: 30px;color: black;"></i>健身房管理</a></li>
        </ul>
    </div>
</div>



<div id="content" style="height: 100%">
    <div class="c">
        <div class="b">
            <img src="Images/01.jpg">
            <span>装修</span>
        </div>
        <div class="b">
            <img src="Images/08.jpg">
            <span>环境</span>
        </div>
        <div class="b">
            <img src="Images/05.jpg">
            <span>灯光</span>
        </div>
        <div class="b">
            <img src="Images/03.jpg">
            <span>室内游泳池</span>
        </div>
        <div class="b">
            <img src="Images/02.jpg">
            <span>动感单车</span>
        </div>

        <div class="b">
            <img src="Images/07.jpg">
            <span>跑步机</span>
        </div>

        <div class="b">
            <img src="Images/06.jpg">
            <span>哑铃</span>
        </div>

    </div>

</div>


<!-- footer -->
<div id="footer">
    <div class="container">
        <div class="indent">
            <div class="fleft"><h4>重庆邮电大学移通学院</h4></div>
            <div class="fright">
                联系方式：18888888888 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a
                    href="http://www.baidu.com/"
                    title="百度一下">百度~~~~</a>

            </div>
        </div>
    </div>
</div>
</body>
</html>