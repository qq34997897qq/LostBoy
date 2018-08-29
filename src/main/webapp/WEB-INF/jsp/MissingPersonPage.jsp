<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>走失儿童信息</title>
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

<div class="abc"  style="height:700px;margin:0 auto;margin-top:75px;border:1px solid #DCDCDC">  
<img src="${MissingPerson.missingPersonPic} " style="float:left;height:350px;width:250px;border:1px solid #DCDCDC;margin-left:2cm;margin-top:3cm">


<div class="abc"  style="float:left;height:550px;width:600px;margin-top:0.8cm;margin-left:1cm;border:1px solid #DCDCDC">
<center> <img src="../images/write.jpg  "></img></center>
<div style="width:600px;height:50px;margin-top:1cm">
<p style="color:green;float:left;margin-left:2cm">姓名:&nbsp&nbsp&nbsp</p> <p class="name" style="float:left;">${MissingPerson.missingPersonName}</p></div>
<div style="width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">身高:&nbsp&nbsp&nbsp</p> <p class="high" style="float:left;">${MissingPerson.missingPersonHigh} </p></div>
<div style="width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">性别:&nbsp&nbsp&nbsp</p> <p class="sex" style="float:left;">${MissingPerson.missingPersonSex} </p></div>
<div style="width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">失踪日期:&nbsp&nbsp&nbsp</p> <p class="date" style="float:left;">${MissingPerson.missingDate}</p></div>
<div style="width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">失踪地点:&nbsp&nbsp&nbsp</p> <p class="place" style="float:left;">${MissingPerson.missingPersonPlace}</p></div>
<div style="blue;width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">失踪人特征描述:&nbsp&nbsp&nbsp</p> <p class="feature"style="float:left;">${MissingPerson.missingPersonFeature} </p></div>
<div style="width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">失踪经过:&nbsp&nbsp&nbsp</p> <p class="happend"style="float:left;">${MissingPerson.missingHappend} </p></div>
<div style="width:600px;height:50px">
<p style="color:green;float:left;margin-left:2cm">联系人方式:&nbsp&nbsp&nbsp</p> <p class="telephone"style="float:left;">${MissingPerson.telephonenumber} </p></div>
  </div>

<p style="height:150px;width:250px;margin-left:2cm;margin-top:10cm">
<p style="color:red;font-size:13px">&nbsp&nbsp&nbsp(1)本网站及志愿者提供的寻亲服务均是免费</p></br>
<p style="color:red;font-size:13px">&nbsp&nbsp&nbsp(2)如信息需要修改，补充，请直接通过本站在线咨询网站工作人员</p></br>

<p>


</div>




<img src="../images/under.png" height="200" width=980px>





</body>
</html>