<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>饮食查询</title>
<link href="Style/style.css" rel="stylesheet" type="text/css" />
	<link href="css/font-awesome.min.css" rel="stylesheet">
<style>
.view{
width: 200px;
height: 200px;
overflow: hidden;
position: relative;
margin: 20px ;
float: left;
border:lightblue solid 2px;
}
.hover{
width: 200px;
background:rgba(0,0,0,0.7);
position: absolute;
top: 40px;
left: 0px;
text-align: center;
color: #fff;
transform:rotate(55deg);
-webkit-transform:rotate(55deg);
transition:all 0.5s;
-webkit-transition:all 0.5s;
overflow: hidden;
height: 0;
z-index:4000;
}
.view:hover .hover{
	height: 120px;
	transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
}

.view:hover:before{
	top: 0;
}

.show{
margin: auto ;
width: 710px;
height: 300px;
}
</style>

<script type="text/javascript">
function Ajax01(is) {
    var ajax;
    if (window.XMLHttpRequest){
        ajax=new XMLHttpRequest();

    } else if (window.ActiveXObject){
        ajax=new ActiveXObject("Msxml2.XMLHTTP");
    }

    ajax.onreadystatechange=function () {
        var re=ajax.responseText;
        var div01=document.getElementById("show");
        if(div01.innerHTML!=null){
        	div01.innerHTML="";
			div01.innerHTML=re;
		}else {
        	div01.innerHTML=re;
        }

    }

    ajax.open("get",is);
    ajax.send(null);
}

function in1(is) {
	is.style.cursor="pointer";
	is.style.color="#ff4e7c";
}
function out(is) {
	is.style.color="#fff";
}

function BMI() {
    var h1 = document.getElementById("h").value;
    var h=eval(h1/100);
    var w = document.getElementById("w").value;
    var e=eval(w/(h^2)).toFixed(2);
    if (h1==""||w==""){
    	alert("请输入身高、体重");
    }else if (e<18.5){document.getElementById("zlzs").innerHTML="<h4 style='color:#6054ff;'>您的身体质量指数(BMI)为："+e+"</h4><br><h4 style='color: red'>体重过低~ </h4 > "}
    else if(e>18.5&&e<25){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>您的身体质量指数(BMI)为："+e+"</h4><br><h4 style='color:#05bc12'>体重正常~ </h4 >"}
    else if(e>25&&e<30){  document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>您的身体质量指数(BMI)为："+e+"</h4><br><h4 style='color: red'>超重~ </h4 >"}
    else if(e>30&&e<35){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>您的身体质量指数(BMI)为："+e+"</h4><br><h4 style='color: red'>轻度肥胖~ </h4 >"}
    else if(e>35&&e<40){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>您的身体质量指数(BMI)为："+e+"</h4><br><h4 style='color: red'>中度肥胖~ </h4 >"}
    else if(e>40){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>您的身体质量指数(BMI)为："+e+"</h4><br><h4 style='color: red'>重度肥胖~ </h4 >"}

}

function BRM() {
    var h1 = document.getElementById("h1").value;
    var w1 = document.getElementById("w1").value;
    var n = document.getElementById("n").value;
    var sexel=document.getElementsByName("sex");
    var sex;
    for (var i = 0; i <sexel.length ; i++) {
        if (sexel[i].checked){
            sex=sexel[i];
            break;
        }
    }
    if (h1==""||w1==""||n==""){
    	alert("请输入身高、体重、年龄")
    }else if (sex.value=="男"){
        var result=eval((13.7*w1)+(5*h1)-(6.8*n)+66).toFixed(0);
        document.getElementById("zl").innerHTML="<h4> • 您的基础代谢率为<span style='color: red'>"+result+"</span>大卡</h4>"
    }else {
        var result=eval((9.6*w1)+(1.8*h1)-(4.7*n)+655).toFixed(0);
        document.getElementById("zl").innerHTML="• 您的基础代谢率为<span style='color: red'>"+result+"</span>大卡"
    }
}
</script>
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
        <nav style="height: 950px;width: 250px;float: left;border-radius: 30px;margin-top: 25px">
            <div style="height: 470px;width: 250px;border:#71ff77 ridge 4px;float: left;border-radius: 30px;margin-bottom: 5px">
              <h4 style="margin-top: 10px;color:#6054ff"><i class="fa fa-paw" style="font-size: 25px;color: #9f164d"></i>身体质量指数(BMI):</h4>
              <p style="margin-top: 5px;color:darkgoldenrod">&nbsp;&nbsp;&nbsp;&nbsp;BMI[Body Mass Index] 即BMI指数，也叫身体质量指数，是衡量是否肥胖和标准体重的重要指标。适用范围：18至65岁的人士。儿童、发育中的青少年、孕妇、乳母、老人及身型健硕的运动员除外。世界卫生组织认为BMI指数保持在22左右是比较理想的。</p>
              <hr>
              <h5 style="margin-top: 5px;">请输入你的身高、体重:</h5>
              <h5>身高：</h5> <input type="text" id="h" value="">（CM）<br><br>
              <h5>体重：</h5><input type="text" id="w" value="">(KG)<br>
              <input type="button" value="计算" onclick="BMI()" style="width: 100px;height: 30px;margin-top:10px;border-radius: 30px;background: #9bffca">
              <div style="width: 220px;height: 100px;border:#6054ff solid 1px;margin:5px auto" id="zlzs"> </div>
            </div>

            <div style="height: 570px;width: 250px;border:#3bc5ff groove 4px;float: left;border-radius: 30px;">
              <h4 style="margin-top: 10px;color:#6054ff"><i class="fa fa-paw" style="font-size: 25px;color: #9f164d"></i>基础代谢:</h4>
              <p style="margin-top: 5px;color:darkgoldenrod">&nbsp;&nbsp;&nbsp;&nbsp;

                  基础代谢率（BMR）是指人体在清醒而又极端安静的状态下，不受肌肉活动、环境温度、食物及精神紧张等影响时的能量代谢率。
                  基础代谢率对减肥有非常大的影响，每天适量的运动有助于提高身体的基础代谢率，而节食(极端是绝食)会降低人的基础代谢率。通过性别，年龄，身高和体重能粗略计算基础代谢率。
              </p>
              <hr>
              <h5 style="margin-top: 5px;">请输入您的性别、年龄、身高和体重：</h5>
                <h5>性别：</h5><input type="radio" name="sex" value="女" checked>女&nbsp;
                <input type="radio" name="sex" value="男">男<br>
              <h5>身高：</h5> <input type="text" id="h1" value="">（CM）<br><br>
              <h5>体重：</h5><input type="text" id="w1" value="">(KG)<br>
              <h5>年龄：</h5><input type="text" id="n" value=""><br>
              <input type="button" value="计算" onclick="BRM()" style="width: 100px;height: 30px;margin-top:10px;border-radius: 30px;background: #9bffca">
              <div style="width: 220px;height: 50px;border:#6054ff solid 1px;margin:5px auto" id="zl"> </div>
            </div>

        </nav>
		<div style="border:#6ae1ff dashed 3px; width: 250px;height: 1050px;float: right;border-radius: 30px;margin-top: 25px">
			<h4 style="margin-top: 10px;color: #7733ff"><i class="fa fa-star" style="font-size: 25px;color: #9f164d"></i>减肥餐食谱一日三餐:</h4>
			<h5 style="margin-top: 5px">五谷杂粮搭配蛋白质</h5>
			<p style="line-height: 23px">&nbsp;&nbsp;大家都知道我们在吃正餐的时候，如果不吃饱的话，接下来很容易肚子饿，尤其是大家，如果要健身的话，如果没有吃饱，是完全不能够进行健身活动的。饿着肚子怎么可能还进行健身运动呢？所以大家一定要保证健身前要填饱自己的肚子。其实吃五谷杂粮是非常有利于我们的身体的，而且五谷杂粮也能让人感觉到饱腹感，所以大家如果可以用五谷杂粮搭配一下蛋白质，也就是蛋类，豆类食品都是可以的。</p>
			<hr>
			<h5 style="margin-top: 5px">鸡胸肉搭配蔬菜</h5>
			<p style="line-height: 23px">&nbsp;&nbsp;很多人觉得正常吃肉是不太利于减肥的，其实鸡胸肉是很适合在健身的时候，大家可以选择去吃的，因为鸡胸肉的脂肪含量较小，而且在健身的过程中大家如果没有摄入肉类，保持营养的话是非常不好的。在吃鸡胸肉的时候还可以搭配一些新鲜的蔬菜，比如说青菜，土豆，西红柿等等，这些都是非常有利于大家的身体健康的，而且尤其是土豆和西红柿是能够帮助大家形成代谢，更快的也能帮大家去除水肿达到更好的减肥效果。</p>
			<hr>
			<h5 style="margin-top: 5px">牛肉搭配水果</h5>
			<p style="line-height: 23px">&nbsp;&nbsp;虽然说很多肉，大家尽量不要吃太多，因为肉类的脂肪含量还是比较高的，但是大家只要不吃油炸食品，油炸的肉类。就可以减少很多的脂肪含量，而且牛肉的脂肪含量也是在合理的范围之内的，大家在健身的时候也可以选择去吃。在饭后吃一些水果是可以的，不过水果最好也是选择在饭前一个小时吃，这样也是更有利于水果的吸收的，水果的维生素含量是很大的，大家一定要多吃。</p>
		</div>




        <div class="container">
            <div class="inside">
				<div class="box alt" style="width: 100%">

					<div class="inner" style="height: 1000px;border:#99ffe6 groove 2px;border-radius: 40px" >
						<h4 style="color: cornflowerblue"><i class="fa fa-pie-chart" style="font-size: 25px;color: red"></i>常见食物数据：</h4>
						<div class="view"><img alt="" src="Images/01.png" style="width:200px;height: 200px"><div class="hover"  onclick="Ajax01('Ajax');" onmouseover="in1(this)" onmouseout="out(this)"><h4>谷物、主食</h4><br><br>米饭、玉米、馒头、面包</div></div>
						<div class="view"><img alt="" src="Images/02.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax02');" onmouseover="in1(this)" onmouseout="out(this)"><h4>蛋类、肉类</h4><br><br>鸡蛋、猪头、鸡、火腿肠</div></div>
						<div class="view"><img alt="" src="Images/03.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax03');" onmouseover="in1(this)" onmouseout="out(this)"><h4>奶类制品</h4><br><br>纯奶、酸奶</div></div>
						<div class="view"><img alt="" src="Images/04.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax04');" onmouseover="in1(this)" onmouseout="out(this)"><h4>果蔬</h4><br><br>苹果、香蕉、番茄、西瓜</div></div>
						<div class="view"><img alt="" src="Images/05.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax05');" onmouseover="in1(this)" onmouseout="out(this)"><h4>坚果、牛奶</h4><br><br>豆浆、豆腐、核桃</div></div>
						<div class="view"><img alt="" src="Images/06.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax06');" onmouseover="in1(this)" onmouseout="out(this)"><h4>饮料</h4><br><br>可乐、啤酒、咖啡</div></div>
						<div class="view"><img alt="" src="Images/07.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax07');" onmouseover="in1(this)" onmouseout="out(this)"><h4>食用油</h4><br><br>花生油、豆油、混合油</div></div>
						<div class="view"><img alt="" src="Images/08.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax08');" onmouseover="in1(this)" onmouseout="out(this)"><h4>调味品</h4><br><br>白砂糖、蜂蜜、红糖</div></div>
						<div class="view"><img alt="" src="Images/09.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax09');" onmouseover="in1(this)" onmouseout="out(this)"><h4>零食</h4><br><br>饼干、巧克力、冰淇淋</div></div>
						<div class="view"><img alt="" src="Images/010.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax010');" onmouseover="in1(this)" onmouseout="out(this)"><h4>其他</h4><br><br>枸杞、陈皮</div></div>


					<div style="width: 240px;height: 400px;float: left;"><img src="Images/17.jpg" alt="" style="width: 240px;height: 400px"></div>
					<div class="show" id="show"  >


                    </div>
					<div style="width: 220px;height: 420px;float: left;margin-left: 760px"><img src="Images/18..jpg" alt="" style="width: 220px;height: 420px"></div>



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