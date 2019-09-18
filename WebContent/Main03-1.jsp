<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/22
  Time: 下午 7:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB18030" language="java" %>
<html>
<head>
    <meta charset="GB18030">
    <title>中级健身计划</title>
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
                        <div class="inner" style="height: 1690px;border:#99ffe6 groove 2px;border-radius: 40px" >

                         <table border="1" style="width: 1100px;height: 900px;margin: 5px auto;text-align: center">
                             <tr style="background-color: #caffbe">
                                 <th width="200" height="50"></th>
                                 <th width="150"><h4><b>部位</b></h4></th>
                                 <th width="150"><h4><b>动作名称</b></h4></th>
                                 <th width="200"><h4><b>次数</b></h4></th>
                                 <th width="100"><h4><b>组数</b></h4></th>
                                 <th width="200"></th>
                             </tr>
                             <tr>
                                 <td rowspan="8" style="font-size: 30px">周一</td>
                                 <td rowspan="3">胸部</td>
                                 <td>卧推</td>
                                 <td>8、6、6、8 </td>
                                 <td>4</td>
                                 <td rowspan="39"><div style="width: 235px;height:1630px;font-size: 23px">
                                     <h5>中级健身计划制定要领：</h5>
                                     <p>1：适合0-6个月的健身者，锻炼前可用皮尺对主要肌肉部位进行测量和登记。 并拍摄正面、侧面、背面三张图片。每1个月重复记录一次，以方便对比效果。1：适合系统锻炼6个月-1年的健身者，此阶段可学一些训练及营养知识。离健身房近的话，可以考虑去健身房。如果在家里的话，可以入手一套杠铃设备。提醒，在家锻炼杠铃要注意安全防护。  </p>
                                     <p>2：每周锻炼4次，每次锻炼不超过一个半小时。要认真做好锻炼前热身，锻炼后拉伸的工作。每个动作3-4组，组间休息40秒到60秒。 </p>
                                     <p>3：锻炼动作还是以核心动作为主。并逐渐加入各种孤立动作。 </p>
                                     <p>4：以上计划可根据自行需求修改，可加入其他哑铃、杠铃动作。</p>
                                 </div></td>
                             </tr>
                             <tr>
                                 <td>上斜哑铃飞鸟  </td>
                                 <td>12、10、12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>蝴蝶夹胸</td>
                                 <td>15、12、15</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">前臂外侧 </td>
                                 <td> 杠铃反弯举 </td>
                                 <td>12、10、10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >哑铃腕屈伸  </td>
                                 <td>25、20、20、25 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td rowspan="3">腹肌  </td>
                                 <td>负重斜板卷腹 </td>
                                 <td>25、20、20、25 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td>拉力转体腹压缩 </td>
                                 <td>25、20、20</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>肘撑屈膝举腿 </td>
                                 <td>25、20、20</td>
                                  <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="11" style="font-size: 30px">周三</td>
                                 <td rowspan="4">背部</td>
                                 <td>负重引体向上 </td>
                                 <td>8、6、6、8 </td>
                                 <td>4</td>
                             </tr>

                             <tr>
                                 <td>俯立划船  </td>
                                 <td>12、10、10</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td>胸前下拉 </td>
                                 <td>12、10、10</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >单手哑铃划船  </td>
                                 <td>12、12、15</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td rowspan="3">肱二头肌  </td>
                                 <td >弯举   </td>
                                 <td>8、6、6、8 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >单臂斜托弯举  </td>
                                 <td>12、10、12</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>拉力侧平举  </td>
                                 <td> 15、20、15</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">前臂内侧 </td>
                                 <td >杠铃腕弯举 </td>
                                 <td>15、12、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>哑铃单手腕弯举 </td>
                                 <td>15、12、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">下背 </td>
                                 <td >屈膝硬拉  </td>
                                 <td>8、6、8 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>负重伸背  </td>
                                 <td>12、10、10、12 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td rowspan="10" style="font-size: 30px">周五  </td>
                                 <td rowspan="4">肩 </td>
                                 <td>颈后推举 </td>
                                 <td>8、6、8、8 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >前平举 </td>
                                 <td>12、10、10、12 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >拉力侧平举 </td>
                                 <td>15、15、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >提肘拉</td>
                                 <td>15、15、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="4">肱三头肌 </td>
                                 <td >双杠臂屈伸 </td>
                                 <td>15、15、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >头后臂屈伸  </td>
                                 <td>10、8、10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >拉力下压臂屈伸 </td>
                                 <td>10、8、10</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >俯立单臂屈伸  </td>
                                 <td>8、8、8</td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">腹部  </td>
                                 <td >坐姿屈膝收腹  </td>
                                 <td>25、20、20 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td >下斜仰卧起坐   </td>
                                 <td>25、20、20 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="10" style="font-size: 30px">周六  </td>
                                 <td rowspan="5">股四头肌</td>
                                 <td>深蹲  </td>
                                 <td>8、6、6、8 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td>腿举 </td>
                                 <td>12、10、10 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>腿屈伸</td>
                                 <td>15、10、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>箭步蹲 </td>
                                 <td>15、10、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td>肩托斜深蹲  </td>
                                 <td>15、10、10、10 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td>股二头肌 </td>
                                 <td>坐姿下压腿弯举 </td>
                                 <td>15、12、10、20</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">颈部 </td>
                                 <td>自扛颈侧屈  </td>
                                 <td>15、20、15、20</td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td>俯仰卧屈伸 </td>
                                 <td>15、20、15 </td>
                                 <td>3</td>
                             </tr>
                             <tr>
                                 <td rowspan="2">小腿  </td>
                                 <td> 立式举重 </td>
                                 <td>10、12、12、10 </td>
                                 <td>4</td>
                             </tr>
                             <tr>
                                 <td >单腿举重</td>
                                 <td>10、12、12 </td>
                                 <td>4</td>
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