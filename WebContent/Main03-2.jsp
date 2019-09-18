<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/23
  Time: 下午 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB18030" language="java" %>
<html>
<head>
    <meta charset="GB18030">
    <title>专业健身计划</title>
    <link href="Style/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <style>

    </style>
</head>


<body id="page1" >
<!-- header -->
<div id="header" style="height: 270px;background: linear-gradient(to top, #eff3eb,#b46736,#280f02 );">
    <div class="container" style="text-align: center;">
        <h1 style="font-size: 70px; font-family:Algerian;color:#ff6428">we can give you</h1><br><h1 style="font-family:Algerian">much more than others</h1>
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
                        <div class="inner" style="height: 1699px; border:#99ffe6 groove 2px;border-radius: 40px" >

                         <table border="1" style="width: 1100px;height: 900px;margin: 5px auto;text-align: center">
                             <tr style="background-color: #caffbe">
                                 <th width="200" height="50"></th>
                                 <th width="150"><h4><b>部位</b></h4></th>
                                 <th width="250"><h4><b>动作名称</b></h4></th>
                                 <th width="100"><h4><b>次数</b></h4></th>
                                 <th width="100"><h4><b>组数</b></h4></th>
                                 <th width="200"></th>
                             </tr>
                             <tr>
                                 <td rowspan="6" style="font-size: 30px">周一</td>
                                 <td rowspan="6">胸部</td>
                                 <td>平板杠铃卧推(训练整个胸) </td>
                                 <td>10</td>
                                 <td>3</td>
                                 <td rowspan="28"><div style="width: 235px;height:1630px;font-size: 23px">
                                     <h5>高级健身计划制定要领：</h5>
                                     <p>1：适合系统锻炼一年以上健身者，此阶段可系统学习人体肌肉解剖、营养学、运动生理学等内容。 </p>
                                     <p>2：每周锻炼4-6次，可采用多种训练方式，锻炼部位的休息72小时-100小时。每次锻炼1.5-2小时。</p>
                                     <p>3：需保证足够的营养，并合理摄入所需的运动营养品。勿过量补充蛋白质。</p>
                                     <p>4：以上计划可根据自行需求修改，可加入其他哑铃、杠铃动作。</p>
                                 </div></td>
                             </tr>
                             <tr>
                                 <td>下斜板杠铃卧推(训练胸部下沿肌肉) </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>双杠臂屈伸(训练胸部下沿肌肉) </td>
                                 <td>10</td>
                                 <td>2</td>
                             </tr>
                             <tr>
                                 <td >双上斜板哑铃推举30度角(训练上胸部肌肉)  </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >平板哑铃飞鸟(训练胸肌中部) </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >器械夹胸 (训练胸沟部)   </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="4" style="font-size: 30px">周二</td>
                                 <td rowspan="4">背部</td>
                                 <td >引体向上(上背部) </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>杠铃划船(下背部)</td>
                                 <td>10</td>
                                  <td>3</td>
                             </tr>
                             <tr>
                                 <td >窄握距下拉(上背部) </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>

                             <tr>
                                 <td>坐姿划船(下背部)  </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="6" style="font-size: 30px"> 周三</td>
                                 <td rowspan="6">肩部 </td>
                                 <td >杠坐姿杠铃推举(整个肩部)  </td>
                                 <td>10</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >坐姿哑铃推举(整个肩部)   </td>
                                 <td>12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >直立杠铃上拉(三角肌前中束肌)   </td>
                                 <td>10</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >哑铃侧平举(三角肌前中束肌)   </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>反向坐姿夹胸(三角肌后束肌)   </td>
                                 <td> 10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >哑铃俯卧飞鸟(三角肌后束肌)  </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="4" style="font-size: 30px">周四 </td>
                                 <td rowspan="4">肱三头肌  </td>
                                 <td >窄握卧推   </td>
                                 <td>10</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td>仰卧臂屈伸</td>
                                 <td>10 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >器械下压   </td>
                                 <td>10</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >站立哑铃托举  </td>
                                 <td>12</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td rowspan="3" style="font-size: 30px">周五</td>
                                 <td rowspan="3">肱三头肌 </td>
                                 <td >杠铃弯举 </td>
                                 <td>12 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >哑铃弯举</td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >托板弯举  </td>
                                 <td>10 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="5" style="font-size: 30px">周六  </td>
                                 <td rowspan="5">腿部  </td>
                                 <td>杠铃深蹲(股四头肌) </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >器械蹬腿(股四头肌) </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >腿屈伸(股四头肌)   </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >腿弯举(股(股二头肌)   </td>
                                 <td>10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >器械小腿提重(小腿肌肉)    </td>
                                 <td>20 </td>
                                 <td>3</td>
                             </tr>


                         </table>
                </div>
            </div>

        </div>

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