<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>��ʳ��ѯ</title>
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
    	alert("��������ߡ�����");
    }else if (e<18.5){document.getElementById("zlzs").innerHTML="<h4 style='color:#6054ff;'>������������ָ��(BMI)Ϊ��"+e+"</h4><br><h4 style='color: red'>���ع���~ </h4 > "}
    else if(e>18.5&&e<25){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>������������ָ��(BMI)Ϊ��"+e+"</h4><br><h4 style='color:#05bc12'>��������~ </h4 >"}
    else if(e>25&&e<30){  document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>������������ָ��(BMI)Ϊ��"+e+"</h4><br><h4 style='color: red'>����~ </h4 >"}
    else if(e>30&&e<35){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>������������ָ��(BMI)Ϊ��"+e+"</h4><br><h4 style='color: red'>��ȷ���~ </h4 >"}
    else if(e>35&&e<40){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>������������ָ��(BMI)Ϊ��"+e+"</h4><br><h4 style='color: red'>�жȷ���~ </h4 >"}
    else if(e>40){ document.getElementById("zlzs").innerHTML="<h4 style='color: #6054ff;'>������������ָ��(BMI)Ϊ��"+e+"</h4><br><h4 style='color: red'>�ضȷ���~ </h4 >"}

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
    	alert("��������ߡ����ء�����")
    }else if (sex.value=="��"){
        var result=eval((13.7*w1)+(5*h1)-(6.8*n)+66).toFixed(0);
        document.getElementById("zl").innerHTML="<h4> �6�1 ���Ļ�����л��Ϊ<span style='color: red'>"+result+"</span>��</h4>"
    }else {
        var result=eval((9.6*w1)+(1.8*h1)-(4.7*n)+655).toFixed(0);
        document.getElementById("zl").innerHTML="�6�1 ���Ļ�����л��Ϊ<span style='color: red'>"+result+"</span>��"
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
				<li><a href="Main01.jsp" class="first current"><i class="fa fa-home" style="font-size: 30px;color: black;"></i>��ҳ</a></li>
				<li><a href="Main02-1.jsp"><i class="fa fa-adjust" style="font-size: 30px;color: black;"></i>��ʳ��ѯ</a></li>
				<li><a href="Main03.jsp"><i class="fa fa-calendar" style="font-size: 30px;color: black;"></i>����ƻ�</a></li>
				<li><a href="Main04.jsp"><i class="fa fa-address-book" style="font-size: 30px;color: black;"></i>��������</a></li>
				<li><a href="Login.jsp"><i class="fa fa-user-circle" style="font-size: 30px;color: black;"></i>��������</a></li>
			</ul>
		</div>
	</div>



	<div id="content">
        <nav style="height: 950px;width: 250px;float: left;border-radius: 30px;margin-top: 25px">
            <div style="height: 470px;width: 250px;border:#71ff77 ridge 4px;float: left;border-radius: 30px;margin-bottom: 5px">
              <h4 style="margin-top: 10px;color:#6054ff"><i class="fa fa-paw" style="font-size: 25px;color: #9f164d"></i>��������ָ��(BMI):</h4>
              <p style="margin-top: 5px;color:darkgoldenrod">&nbsp;&nbsp;&nbsp;&nbsp;BMI[Body Mass Index] ��BMIָ����Ҳ����������ָ�����Ǻ����Ƿ���ֺͱ�׼���ص���Ҫָ�ꡣ���÷�Χ��18��65�����ʿ����ͯ�������е������ꡢ�и�����ĸ�����˼����ͽ�˶���˶�Ա���⡣����������֯��ΪBMIָ��������22�����ǱȽ�����ġ�</p>
              <hr>
              <h5 style="margin-top: 5px;">�����������ߡ�����:</h5>
              <h5>��ߣ�</h5> <input type="text" id="h" value="">��CM��<br><br>
              <h5>���أ�</h5><input type="text" id="w" value="">(KG)<br>
              <input type="button" value="����" onclick="BMI()" style="width: 100px;height: 30px;margin-top:10px;border-radius: 30px;background: #9bffca">
              <div style="width: 220px;height: 100px;border:#6054ff solid 1px;margin:5px auto" id="zlzs"> </div>
            </div>

            <div style="height: 570px;width: 250px;border:#3bc5ff groove 4px;float: left;border-radius: 30px;">
              <h4 style="margin-top: 10px;color:#6054ff"><i class="fa fa-paw" style="font-size: 25px;color: #9f164d"></i>������л:</h4>
              <p style="margin-top: 5px;color:darkgoldenrod">&nbsp;&nbsp;&nbsp;&nbsp;

                  ������л�ʣ�BMR����ָ���������Ѷ��ּ��˰�����״̬�£����ܼ����������¶ȡ�ʳ�Ｐ������ŵ�Ӱ��ʱ��������л�ʡ�
                  ������л�ʶԼ����зǳ����Ӱ�죬ÿ���������˶��������������Ļ�����л�ʣ�����ʳ(�����Ǿ�ʳ)�ή���˵Ļ�����л�ʡ�ͨ���Ա����䣬��ߺ������ܴ��Լ��������л�ʡ�
              </p>
              <hr>
              <h5 style="margin-top: 5px;">�����������Ա����䡢��ߺ����أ�</h5>
                <h5>�Ա�</h5><input type="radio" name="sex" value="Ů" checked>Ů&nbsp;
                <input type="radio" name="sex" value="��">��<br>
              <h5>��ߣ�</h5> <input type="text" id="h1" value="">��CM��<br><br>
              <h5>���أ�</h5><input type="text" id="w1" value="">(KG)<br>
              <h5>���䣺</h5><input type="text" id="n" value=""><br>
              <input type="button" value="����" onclick="BRM()" style="width: 100px;height: 30px;margin-top:10px;border-radius: 30px;background: #9bffca">
              <div style="width: 220px;height: 50px;border:#6054ff solid 1px;margin:5px auto" id="zl"> </div>
            </div>

        </nav>
		<div style="border:#6ae1ff dashed 3px; width: 250px;height: 1050px;float: right;border-radius: 30px;margin-top: 25px">
			<h4 style="margin-top: 10px;color: #7733ff"><i class="fa fa-star" style="font-size: 25px;color: #9f164d"></i>���ʲ�ʳ��һ������:</h4>
			<h5 style="margin-top: 5px">����������䵰����</h5>
			<p style="line-height: 23px">&nbsp;&nbsp;��Ҷ�֪�������ڳ����͵�ʱ��������Ա��Ļ��������������׶��Ӷ��������Ǵ�ң����Ҫ����Ļ������û�гԱ�������ȫ���ܹ����н����ġ����Ŷ�����ô���ܻ����н����˶��أ����Դ��һ��Ҫ��֤����ǰҪ��Լ��Ķ��ӡ���ʵ����������Ƿǳ����������ǵ�����ģ������������Ҳ�����˸о��������У����Դ����������������������һ�µ����ʣ�Ҳ���ǵ��࣬����ʳƷ���ǿ��Եġ�</p>
			<hr>
			<h5 style="margin-top: 5px">����������߲�</h5>
			<p style="line-height: 23px">&nbsp;&nbsp;�ܶ��˾������������ǲ�̫���ڼ��ʵģ���ʵ�������Ǻ��ʺ��ڽ����ʱ�򣬴�ҿ���ѡ��ȥ�Եģ���Ϊ�������֬��������С�������ڽ���Ĺ����д�����û���������࣬����Ӫ���Ļ��Ƿǳ����õġ��ڳԼ������ʱ�򻹿��Դ���һЩ���ʵ��߲ˣ�����˵��ˣ��������������ȵȣ���Щ���Ƿǳ������ڴ�ҵ����彡���ģ��������������������������ܹ���������γɴ�л�������Ҳ�ܰ���ȥ��ˮ�״ﵽ���õļ���Ч����</p>
			<hr>
			<h5 style="margin-top: 5px">ţ�����ˮ��</h5>
			<p style="line-height: 23px">&nbsp;&nbsp;��Ȼ˵�ܶ��⣬��Ҿ�����Ҫ��̫�࣬��Ϊ�����֬���������ǱȽϸߵģ����Ǵ��ֻҪ������ըʳƷ����ը�����ࡣ�Ϳ��Լ��ٺܶ��֬������������ţ���֬������Ҳ���ں���ķ�Χ֮�ڵģ�����ڽ����ʱ��Ҳ����ѡ��ȥ�ԡ��ڷ����һЩˮ���ǿ��Եģ�����ˮ�����Ҳ��ѡ���ڷ�ǰһ��Сʱ�ԣ�����Ҳ�Ǹ�������ˮ�������յģ�ˮ����ά���غ����Ǻܴ�ģ����һ��Ҫ��ԡ�</p>
		</div>




        <div class="container">
            <div class="inside">
				<div class="box alt" style="width: 100%">

					<div class="inner" style="height: 1000px;border:#99ffe6 groove 2px;border-radius: 40px" >
						<h4 style="color: cornflowerblue"><i class="fa fa-pie-chart" style="font-size: 25px;color: red"></i>����ʳ�����ݣ�</h4>
						<div class="view"><img alt="" src="Images/01.png" style="width:200px;height: 200px"><div class="hover"  onclick="Ajax01('Ajax');" onmouseover="in1(this)" onmouseout="out(this)"><h4>�����ʳ</h4><br><br>�׷������ס���ͷ�����</div></div>
						<div class="view"><img alt="" src="Images/02.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax02');" onmouseover="in1(this)" onmouseout="out(this)"><h4>���ࡢ����</h4><br><br>��������ͷ���������ȳ�</div></div>
						<div class="view"><img alt="" src="Images/03.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax03');" onmouseover="in1(this)" onmouseout="out(this)"><h4>������Ʒ</h4><br><br>���̡�����</div></div>
						<div class="view"><img alt="" src="Images/04.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax04');" onmouseover="in1(this)" onmouseout="out(this)"><h4>����</h4><br><br>ƻ�����㽶�����ѡ�����</div></div>
						<div class="view"><img alt="" src="Images/05.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax05');" onmouseover="in1(this)" onmouseout="out(this)"><h4>�����ţ��</h4><br><br>����������������</div></div>
						<div class="view"><img alt="" src="Images/06.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax06');" onmouseover="in1(this)" onmouseout="out(this)"><h4>����</h4><br><br>���֡�ơ�ơ�����</div></div>
						<div class="view"><img alt="" src="Images/07.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax07');" onmouseover="in1(this)" onmouseout="out(this)"><h4>ʳ����</h4><br><br>�����͡����͡������</div></div>
						<div class="view"><img alt="" src="Images/08.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax08');" onmouseover="in1(this)" onmouseout="out(this)"><h4>��ζƷ</h4><br><br>��ɰ�ǡ����ۡ�����</div></div>
						<div class="view"><img alt="" src="Images/09.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax09');" onmouseover="in1(this)" onmouseout="out(this)"><h4>��ʳ</h4><br><br>���ɡ��ɿ����������</div></div>
						<div class="view"><img alt="" src="Images/010.png" style="width:200px;height: 200px"><div class="hover" onclick="Ajax01('Ajax010');" onmouseover="in1(this)" onmouseout="out(this)"><h4>����</h4><br><br>��轡���Ƥ</div></div>


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