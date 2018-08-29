<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>留言板</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../css/reset.min.css">
<link rel="stylesheet" href="../css/style.css">
<link href="http://hovertree.com/jq/hovertreeimg/jquery.hovertreeimg.css" type="text/css" rel="stylesheet" />
 <script src="http://hovertree.com/ziyuan/jquery/jquery-1.12.0.min.js"></script>
    <script src="http://hovertree.com/jq/hovertreeimg/jquery.hovertreeimg.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script> 
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

<div class="div"  style="background-color:white;height:800px;margin:0 auto;margin-top:75px">  


<center><img src="../images/message.jpg" width="150" height="150"></center>  </br>
<p style="color:red">1、如果您上传信息有误要修改的话可以留言。</p></br>
<p style="color:red">2、如果您在网站看到疑似自己家走失儿童可以留言，我们会尽快联络您。</p></br>
<p style="color:red">3、如果该网站出现问题或者有更好意见的话您可以留言，我们会尽快完善。</p></br>


<center><div class="div2" style="background-color:white;width:650px;height:350px;margin:0 auto;margin-top:75px">
 <p id=result style="color:red"> ${result}</p>
<form action="/userLogin/user/storemessage" method="post" onsubmit="return check()">		


				
					
		<textarea id="message" name="message" type="text" style = "width:640px;height:280px; font-size:20px  "></textarea>
	
	
		
	<input id="login" type="submit" value="留言"  style="height:35px; width:100px;background-color:#46A3FF;margin-top:0.5cm;color: white;text-align="center";">	
		
	</form>
</div>
</div></center>


</div>
<img src="../images/under.png" height="200" width=980px>

<script>
  
	 function check(){
    	if($("#message").val()==""){
    		alert("内容不能为空");
    		return false;
    	}

    	return true;
    }

</script>

</body>
</html>