<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">  
<title>首页</title> 
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../css/reset.min.css">
<link rel="stylesheet" href="../css/style.css">

<link href="http://hovertree.com/jq/hovertreeimg/jquery.hovertreeimg.css" type="text/css" rel="stylesheet" />
 <script src="http://hovertree.com/ziyuan/jquery/jquery-1.12.0.min.js"></script>
    <script src="http://hovertree.com/jq/hovertreeimg/jquery.hovertreeimg.js"></script>
	
	


	
</head>

<img src="../images/baby.jpg" height="200" width=980px>
<body>
<ul class="hList" >
	<li>
		<a href="/userLogin/user/servlet?page=homepage" class="menu">
			<h2 class="menu-title">首页</h2>
			<ul class="menu-dropdown">

			</ul>
		</a>
	</li>
	<li>
		<a href="/userLogin/user/servlet?page=second" class="menu">
			<h2 class="menu-title menu-title_2nd">寻亲登记</h2>
			<ul class="menu-dropdown">

			</ul>
		</a>
	</li>
	<li>
		<a href="/userLogin/user/servlet?page=third" class="menu">
		<h2 class="menu-title menu-title_3rd">社会新闻</h2>
		<ul class="menu-dropdown">


		</ul>
		</a>
	</li>
	<li>
		<a href="/userLogin/user/servlet?page=fourth" class="menu">
			<h2 class="menu-title menu-title_4th">志愿者报名</h2>
			<ul class="menu-dropdown">

			</ul>
		</a>
	</li>
		<li>
		<a href="/userLogin/user/servlet?page=message" class="menu"> 
			<h2 class="menu-title menu-title_5th">留言板</h2>
			<ul class="menu-dropdown">
			
			</ul>
		</a>
	</li>
</ul>

<div class="div"  style="background-color:white;height:1700px;margin:0 auto;">  
<%--   <p id=result style="color:red"> ${user.username}</p>  --%>
<!-- ----------图片轮放 ----------------------->
 <div id="hovertreeimg" style=" float:left;margin-top:0.5cm;width:320px;height:270px;">
       <img id="obj" src="../images/2.jpg" style="width:320px;height:270px;floar:left" ></img>  
    </div>
	
	<div style=" float:left;background-color:white;height:280px;width:650px;border:1px solid #DCDCDC;margin-top: 0.5cm;margin-left:0.25cm">

<p style="color:#008000;background-color: #FFEFD5;height:25px ">宝贝寻家</p><br/>
<a href="/userLogin/user/MissingPersonInformation?id=1"><p style="color:#00CC00 ;font-size:13px;float:left">寻找87年出生91年失踪&nbsp&nbsp&nbsp&nbsp2017-10-19</p></a>

<a href="/userLogin/user/MissingPersonInformation?id=2"><p style="color:#00CC00 ;font-size:13px;float:left;margin-left:3.5cm">寻找87年出生五个月后被送&nbsp&nbsp&nbsp&nbsp2017-11-16</p></a></br>
<div>
<img src="../images/baby1.jpg" height="100" width="100" style="margin-left:0.2cm"></img><img src="../images/boy2.jpg" height="100" width="100" style="margin-left:7cm"></img>

</div>
<div class="line" style="width:250px;border:1px solid #aaa;margin-top:0.3cm;float:left"></div>
<div class="line" style="width:250px;border:1px solid #aaa;margin-top:0.3cm;margin-left:3cm;float:left"></div></br></br>

 <a href="/userLogin/user/MissingPersonInformation?id=3"><p style="float:left;color:#DODODO;font-size:13px;margin-left:0.1cm"><span>></span>&nbsp&nbsp寻找98年出生91年失踪四川&nbsp&nbsp&nbsp2017-10-19</p></a> 
 <a href="/userLogin/user/MissingPersonInformation?id=4"><p style="color:#DODODO;font-size:13px;margin-left:2.5cm;float:left;"><span>></span>&nbsp&nbsp寻找90年出生91年失踪北京&nbsp&nbsp&nbsp2017-10-19</p></a>
 <a href="/userLogin/user/MissingPersonInformation?id=5"><p style="float:left;color:#DODODO;font-size:13px;margin-top:0.15cm;margin-left:0.1cm"><span>></span>&nbsp&nbsp寻找94年出生92年失踪成都&nbsp&nbsp&nbsp2017-10-19</p></a>
 <a href="/userLogin/user/MissingPersonInformation?id=6"> <p style="color:#DODODO;font-size:13px;margin-top:0.15cm;margin-left:2.5cm;float:left;"><span>></span>&nbsp&nbsp寻找92年出生91年失踪咸阳&nbsp&nbsp&nbsp2017-10-19</p></a>
  <a href="/userLogin/user/MissingPersonInformation?id=7"><p style="float:left;color:#DODODO;font-size:13px;margin-top:0.15cm;margin-left:0.1cm"><span>></span>&nbsp&nbsp寻找98年出生95年失踪湖南&nbsp&nbsp&nbsp2017-10-19</p> </a>
 <a href="/userLogin/user/MissingPersonInformation?id=8"> <p style="color:#DODODO;font-size:13px;margin-top:0.15cm;margin-left:2.5cm;float:left;"><span>></span>&nbsp&nbsp寻找89年出生92年失踪韶关&nbsp&nbsp&nbsp2017-10-19</p></a>
 <a href="/userLogin/user/MissingPersonInformation?id=9"><p style="float:left;color:#DODODO;font-size:13px;margin-top:0.15cm;margin-left:0.1cm"><span>></span>&nbsp&nbsp寻找98年出生97年失踪东莞&nbsp&nbsp&nbsp2017-10-19</p> </a>
  <a href="/userLogin/user/MissingPersonInformation?id=10"><p style="color:#DODODO;font-size:13px;margin-top:0.15cm;margin-left:2.5cm;float:left;"><span>></span>&nbsp&nbsp寻找97年出生99年失踪海南&nbsp&nbsp&nbsp2017-10-19</p></a>
</div>



	<div style=" float:left;background-color:white;height:240px;width:483px;border:1px solid #DCDCDC"> 
<p style="color:#008000;background-color: #FFEFD5;height:25px ">成功案例</p>

<img src="../images/boy1.jpg" height="80" width="120" style="float:left"></img> <p style="color:orange;font-size:15px;margin-top:0.5cm;";>3岁男童深圳被拐 警方千里营救</p>
 <p style="color:black;font-size:13px;margin-top:0.35cm;";> (警方千里营救,历经24小时，奔波........) <a href="http://www.gdga.gov.cn/jwzx/jsyw/201702/t20170208_785006.html" target="view_window"> <span style="color:green;cursor:pointer">[详细]</span></p></a>

&nbsp
	<a href="http://www.dzwww.com/xinwen/shehuixinwen/201803/t20180321_17171721.htm" target="_blank"> <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp幼童贪玩走失 民警助其回家&nbsp&nbsp&nbsp2018-03-21</p></a>
	<a href="http://news.sina.com.cn/c/2018-02-24/doc-ifyrvaxe9807514.shtml" target="_blank"><p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp民警利用社区微信群 帮助走失儿童顺利回家&nbsp&nbsp&nbsp2018-02-24</p></a>
	<a href="http://bbs.baobeihuijia.com/thread-400906-1-1.html" target="_blank"> <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp咫尺相望已余年 不遗余力助团圆-高盈盈寻家&nbsp&nbsp&nbsp2018-1-12</p></a>
	<a href="http://news.163.com/17/0906/16/CTLO16DC000187VE.html" target="_blank">  <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp智力障碍儿童走失 深圳巴士人热心帮他找回家&nbsp&nbsp&nbsp2017-9-2</p></a>
 
 
</div>

	<div style=" float:left;background-color:white;height:240px;width:483px;border:1px solid #DCDCDC;margin-left:0.13cm"> 
<p style="color:#008000;background-color: #FFEFD5;height:25px ">志愿者行动</p>
<img src="../images/gg.jpg" height="80" width="120" style="float:left"></img> <p style="color:orange;font-size:15px;margin-top:0.5cm;";>宝贝回家寻子网 关爱儿童我们共同的责任</p>
 <p style="color:black;font-size:13px;margin-top:0.35cm;";> (如何报名志愿者？)<a href="fourth"></a><span style="color:green;cursor:pointer">[详细]</span></p></a>

&nbsp
 <a href="http://www.chenxi.gov.cn/Item/63981.aspx" target="_blank"> <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp辰溪志愿者帮助走失儿童回家 &nbsp&nbsp&nbsp2017-9-14</p></a>
  <a href="http://news.ycwb.com/2018-03/15/content_26110411.htm" target="_blank"> <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp 天使妈妈 张宝艳：为九千多名被拐儿童点亮回家的路&nbsp&nbsp&nbsp2017-10-19</p></a>
     <a href="http://wm.jschina.com.cn/9659/ganyu/201608/t2962195.shtml"target="_blank"> <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp志愿者联手帮助走失儿童回家课 &nbsp&nbsp&nbsp2017-5-19</p></a>
	<a href="http://www.sinopecnews.com.cn/news/content/2016-01/04/content_1579940.shtml" target="_blank" >  <p style="color:#DODODO;font-size:13px;margin-top:0.4cm;margin-left:0.1cm;cursor:pointer"><span>></span>&nbsp&nbsp&nbsp&nbsp&nbsp志愿者热心帮助走失儿童寻找家长&nbsp&nbsp&nbsp2017-01-04</p></a>

</div>
<img id= "obj2" src="../images/love3.jpg" width="980" height="200"> 

<div style=" float:left;background-color:white;height:580px;width:980px;border:1px solid #DCDCDC;margin-top:0.25cm"> 
<p style="float:left;color:#008000;background-color: #FFEFD5;height:25px ;margin-left:12cm">走失儿童</p>
<a href="/userLogin/user/MissingPersonInformation?id=0"><p style="color:#008000;background-color: #FFEFD5;height:25px ;text-align: right">更多</p></a>
<a href="/userLogin/user/MissingPersonInformation?id=1"><img src="../images/baby1.jpg" id="one" value="1" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=2"><img src="../images/baby2.jpg" id="two" value="2" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=3"><img src="../images/baby3.jpg"id="three" value="3" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=4"><img src="../images/baby4.jpg" id="four" value="4"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=5"><img src="../images/baby5.jpg" id="five" value="5"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>

<a href="/userLogin/user/MissingPersonInformation?id=6"><img src="../images/baby6.jpg"id="six"    value="6"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:2cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=7"><img src="../images/baby7.jpg" id="seven" value="7" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:2cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=8"><img src="../images/baby8.jpg" id="eight" value="8"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:2cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=9"><img src="../images/baby9.jpg" id="nine"  value="9" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:2cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/MissingPersonInformation?id=10"><img src="../images/baby10.jpg" id="ten"  value="10"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:2cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>


</div>

<div style=" float:left;background-color:white;height:300px;width:980px;border:1px solid #DCDCDC;margin-top:0.25cm"> 
<p style="float:left;color:#008000;background-color: #FFEFD5;height:25px ;margin-left:12cm">流浪乞丐</p>
<a href="/userLogin/user/TrampPersonInformation?id=0"><p style="color:#008000;background-color: #FFEFD5;height:25px ;text-align: right">更多</p></a>
<a href="/userLogin/user/TrampPersonInformation?id=1"><img src="../images/tramp1.jpg" id="one" value="1" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/TrampPersonInformation?id=2"><img src="../images/tramp2.jpg" id="two" value="2" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/TrampPersonInformation?id=3"><img src="../images/tramp3.jpg"id="three" value="3" height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/TrampPersonInformation?id=4"><img src="../images/tramp4.jpg" id="four" value="4"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>
<a href="/userLogin/user/TrampPersonInformation?id=5"><img src="../images/tramp5.jpg" id="five" value="5"height="120" width="120" style="float:left;margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC;cursor:pointer"></img></a>

</div>

<!-- <form       action="/userLogin/user/MissingPersonInformation" method="post"  >
  <button style="submit" class="login_btn" ">登 录</button>	
</form> -->


</div>
	


<script>
//图片的大小
    
var curIndex=0; 
//时间间隔 单位毫秒 
var timeInterval=2000; 
var arr=new Array(); 
arr[0]="../images/1.jpg"; 
arr[1]="../images/2.jpg"; 
arr[2]="../images/3.jpg"; 
arr[3]="../images/4.jpg"; 

setInterval(changeImg,timeInterval); 
function changeImg() 
{ 
    var obj=document.getElementById("obj"); 
    if (curIndex==arr.length-1)  
    { 
        curIndex=0; 
    } 
    else 
    { 
        curIndex+=1; 
    } 
    obj.src=arr[curIndex]; 
}  

  
   
       
    </script>
    
    


<div class="abc"  style="height:350px;margin:0 auto;">  
<a href="http://www.gdga.gov.cn/?top_keyword" target="_blank"><p style="float:left;;margin-left:2cm;margin-top:1cm">公安局</p></a>
<a href="message"><p style="float:left;;margin-left:2cm;margin-top:1cm">留言给管理员</p></a>
<p style="float:left ;margin-left:2cm;margin-top:1cm">电话：0435-3338090  &nbsp&nbsp   </p>
<p style="float:left;margin-left:2cm;margin-top:1cm" >信箱：baobeihuijia@yeah.net  </p>
<p style="float:left;margin-left:2cm;margin-top:1cm">服务时间：08:00-23:00 </p></br>
<p style="float:left;margin-left:2cm;margin-top:1cm">地址：吉林省通化市和平路685号 </p>
<p style="float:left;margin-left:2cm;margin-top:1cm">邮编：134000 </p>
<p style="float:left;margin-left:2cm;margin-top:1cm">新浪微博群号：117543，127590 </p></br>
<p style="float:left;;margin-left:2cm;margin-top:1cm">全国接待QQ群：1840533 </p>

</div>


<style>
.abc{
background-image:url(../images/under.png) ;
background-repeat:no-repeat;
background-size:100% 100% ;
} 
a:hover{
color:blue;
}

span{
color:green
}


</style>
</body>
</html>