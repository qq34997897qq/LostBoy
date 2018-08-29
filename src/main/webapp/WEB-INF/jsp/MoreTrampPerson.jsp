<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>更多信息</title>
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
 
<div class="div"  style="background-color:white;height:900px;margin:0 auto;">  



<div style=" float:left;background-color:white;height:900px;width:980px;border:1px solid #DCDCDC;margin-top:0.25cm"> 
<p style="color:#008000;background-color: #FFEFD5;height:40px ;font-size:25px;text-align: center">流浪乞丐</p>
<p>${searchResult}</p>
 <c:forEach items="${listTrampPerson}" var="record" varStatus="status">

 <%-- <a href="/userLogin/user/MissingPersonInformation?id=${record.missingPersonId} "> <img src="${record.missingPersonPic} " height="120" width="120" style="margin-left:1.5cm;margin-top:1cm;border:2px solid #DCDCDC"></img></a> --%>
 
 <a href="/userLogin/user/TrampPersonInformation?id=${record.trampPersonId} "><div style="float:left;width:125px;height:150px;margin-left:1.5cm;margin-top:1cm;">
<img src="${record.trampPersonPic}" width="120" height="120"/>
<p style="text-align: center">${record.trampPersonName}</p>
</div>
</a>
  </c:forEach>  

<br/>

<%-- <a href="/userLogin/user/MissingPersonInformation2?start=0">首  页</a>
        <a href="/userLogin/user/MissingPersonInformation2?start=1">上一页</a>
         <a href="/userLogin/user/MissingPersonInformation2?start=2">下一页</a>
        <a href="?start=${page.start+page.count}">下一页</a>
      <a href="?start=2">
</div> --%>

<div style="margin-top:15cm;text-align:center">
<a>首页&nbsp</a><a>上一页&nbsp</a><a>下一页&nbsp</a><a>末页&nbsp</a><br/><br/><br/>



 <!-- <form action="/userLogin/user/specialMissingPerson" method="post">
 性别<select id="sex" name="sex" >
 <option value="null">请选择</option>
  <option  value ="男">男</option>
  <option  value ="女" >女</option>
</select>
 
姓氏： <input type="text"  id="LastName"  name="LastName" maxlength="10" size="5" />
 <input id="search" type="submit" value="搜索"/>
 
 </form> -->
 </div>

</div>


</div>
	





<div class="abc"  style="height:300px;margin:0 auto;">  
<p style="float:left ;margin-left:2cm">电话：0435-3338090  &nbsp&nbsp   </p>
<p style="float:left;margin-left:2cm" >信箱：baobeihuijia@yeah.net  </p>
<p style="float:left;margin-left:2cm">服务时间：08:00-23:00 </p></br>
<p style="float:left;margin-left:2cm">地址：吉林省通化市和平路685号 </p>
<p style="float:left;margin-left:2cm">邮编：134000 </p>
<p style="float:left;margin-left:2cm">新浪微博群号：117543，127590 </p></br>
<p style="float:left;;margin-left:2cm">全国接待QQ群：1840533 </p>
</div>



<style>
.abc{
background-image:url(images/under.png) ;

}

<style>
span{
color:green
}
.under{
background-image:url(images/love.jpg) ;

}
</style>
</body>
</html>