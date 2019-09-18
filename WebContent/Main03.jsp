<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/21
  Time: 下午 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB18030" language="java" %>
<html>
<head>
    <meta charset="GB18030">
    <title>初级健身计划</title>
    <link href="Style/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet">

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



<div id="content">
    <ul class="menu" style="margin: 0 auto;text-align: center">
        <li><a href="Main03.jsp">初级健身计划</a></li>
        <li><a href="Main03-1.jsp">中级健身计划</a></li>
        <li><a href="Main03-2.jsp">专业健身计划</a></li>
    </ul>

    <div class="container">
        <div class="inside">
            <!-- box begin -->
            <div class="box alt">

                        <div class="inner" style="height: 1060px;border:#99ffe6 groove 2px;border-radius: 40px " >

                         <table border="1" style="width: 1100px;height: 900px;margin: 5px auto;text-align: center">
                             <tr style="background-color: #caffbe">
                                 <th width="200" height="50"></th>
                                 <th width="150"><h4><b>部位</b></h4></th>
                                 <th width="150"><h4><b>动作名称</b></h4></th>
                                 <th width="100"><h4><b>次数</b></h4></th>
                                 <th width="100"><h4><b>组数</b></h4></th>
                                 <th width="200"></th>
                             </tr>
                             <tr>
                                 <td rowspan="7" style="font-size: 30px">周一</td>
                                 <td rowspan="3">胸部</td>
                                 <td>杠铃卧推 </td>
                                 <td>12</td>
                                 <td>3</td>
                                 <td rowspan="21"><div style="width: 235px;height: 1000px;font-size: 23px">
                                     <h5>初学健身计划制定要领：</h5>
                                     <p>1：适合0-6个月的健身者，锻炼前可用皮尺对主要肌肉部位进行测量和登记。 并拍摄正面、侧面、背面三张图片。每1个月重复记录一次，以方便对比效果。 </p>
                                     <p>2：每周锻炼3次，每次锻炼不超过60分钟，要认真做好锻炼前热身，锻炼后拉伸的工作。每个动作3组，组间休息1-2分钟。 </p>
                                     <p>3：锻炼动作主要以核心动作为主，如深蹲、卧推、硬拉、划船等。重量方面要循序渐进，锻炼过程中如有疼痛感就要降低锻炼重量，以防受伤。</p>
                                     <p>4：以上计划可根据自行需求修改，可加入其他哑铃、杠铃动作。</p>
                                 </div></td>
                             </tr>
                             <tr>
                                 <td>哑铃飞鸟 </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>俯卧撑 </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">肱三头肌</td>
                                 <td>俯卧撑</td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >哑铃颈后屈臂 </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">腹部 </td>
                                 <td>仰卧起坐</td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>仰卧举腿</td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="7" style="font-size: 30px">周三</td>
                                 <td rowspan="3">背部</td>
                                 <td>引体向上</td>
                                 <td>8</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>颈前下拉 </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>哑铃划船</td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">肱二头肌 </td>
                                 <td>哑铃弯举 </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>斜板弯举  </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">腹部 </td>
                                 <td>仰卧起坐</td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>仰卧举腿 </td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="7" style="font-size: 30px">周五</td>
                                 <td rowspan="2">腿部</td>
                                 <td>杠铃深蹲 </td>
                                 <td>15</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>哑铃提重</td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="3">肩部</td>
                                 <td >哑铃坐姿推举 </td>
                                 <td>15</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>杠铃颈后推举 </td>
                                 <td>15</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>哑铃侧平举 </td>
                                 <td>15</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">腹部</td>
                                 <td >仰卧起坐</td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >仰卧举腿 </td>
                                 <td>20</td>
                                 <td>3</td>
                             </tr>


                         </table>


                        </div>


            </div>
        </div>
        <!-- box end -->
        <!-- box begin -->
        <!-- box end -->
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