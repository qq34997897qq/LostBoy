<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>走失儿童登记</title>
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

<div class="div"  style="background-color:#E0FFFF;height:1400px;margin:0 auto;margin-top:75px">  
<img src="../images/write1.jpg" style="float:left;margin-left:10cm"></img><p style="color:green;font-size:35px;">家庭寻亲</p> 
 <center><p style="color:red ;font-size:20px;margin-top:1.5cm"> ${result}</p></center>

 <%--  <p id=result style="color:red"> ${user.username}</p> --%>

<center><div class="div2" style="background-color:white;width:460px;height:1100px;margin:0 auto;margin-top:75px">

<form action="/userLogin/user/checkMissingPerson" method="post" onsubmit="return check()" enctype="multipart/form-data">	


				
					
		
		<table style="border-collapse:separate; border-spacing:15px;font-size:14px">
		
		  <tr><td>图片上传</td><td><input type='file'  name='file' onchange="imagePreview(this)" ></td></tr>
		 <img id="preview" style = "width:200px;height:200px; margin-top:10px  "> </img>
	<tr><td>失踪人姓名</td><td><input id="MissingPersonName" name="MissingPersonName" type="text" placeholder="用户名" style = "width:200px;height:30px; margin-top:5px  "></td></tr>
    <tr><td>失踪时身高</td><td><input id="MissingPersonHigh" name="MissingPersonHigh" type="text"  style = "width:200px;height:30px" >厘米</td></tr></br>
 
    <tr><td>性别：</td><td><input id="man"  type="radio" checked="checked" name="MissingPersonSex" value="男" />男<input id="woman" type="radio"  name="MissingPersonSex" value="女"/>女 </td></tr></br>
	
    <tr><td>失踪日期</td><td><input id="MissingDate" name="MissingDate" type="date" value="2015-09-24"style = "width:200px;height:30px;"/></td></tr></br>
     
	 <tr><td>失踪人籍贯</td><td><input id="MissingPersonForm" name="MissingPersonForm" type="text" style = "width:200px;height:30px;  ">请填写所在地</td></tr>
	 
	 <tr><td>失踪人地点</td><td><input id="MissingPersonPlace" name="MissingPersonPlace" type="text" style = "width:200px;height:30px;   ">请填写详细地址</td></tr>
	 
	  <tr><td>失踪人特征描述</td><td><textarea id="MissingPersonFeature" name="MissingPersonFeature" type="text" style = "width:280px;height:50px;   "></textarea></td></tr>
	 
	<tr><td>失踪经过</td><td><textarea id="MissingHappend" name="MissingHappend" type="text" style = "width:280px;height:50px;   "></textarea></td></tr>	

	<tr><td>其他说明</td><td><textarea id="other" name="other" type="text" style = "width:280px;height:50px;   "></textarea></td></tr>
	
		<tr><td> <p style="color:black;font-size:16px;">联系人信息</p></td></tr>
	
	 <tr><td>联系人姓名</td><td><input id="ContactsName" name="ContactsName" type="text" style = "width:200px;height:30px;  "></td></tr>
	 
	  <tr><td>与失踪者关系</td><td><input id="relationship" name="relationship" type="text" style = "width:200px;height:30px;  "></td></tr>
	  
	   <tr><td>联系方式</td><td><input id="telephonenumber" name="telephonenumber" type="text" style = "width:200px;height:30px;  "></td></tr>
	   
	   <tr><td>邮箱</td><td><input id="email" name="email" type="text" style = "width:200px;height:30px;  "></td></tr>
	   
	   <tr><td>地址</td><td><input id="address" name="address" type="text" style = "width:200px;height:30px;  "></td></tr>
	  
	    
	
	</table>
	<input id="login" type="submit" value="登记"  style="height:35px; width:100px;background-color:#46A3FF;color: white;text-align="center";">	
		
	</form>
</div>
</div></center>


</div>
<img src="../images/under.png" height="200" width=980px>

<script>
    function imagePreview(fileDom){
   
		var reader = new FileReader();
        //获取文件
        var file = fileDom.files[0];
        var imageType = /^image\//;
        //是否是图片
        if (!imageType.test(file.type)) {
            alert("请选择图片！");
            return;
        }
        //读取完成
        reader.onload = function(e) {
            //获取图片dom
            var img = document.getElementById("preview");
            //图片路径设置为读取的图片
            img.src = e.target.result;
        };
        reader.readAsDataURL(file);
    }
	 function check(){
    	if($("#MissingPersonName").val()==""){
    		alert("请填写失踪者姓名");
    		return false;
    	}else if($("#MissingPersonHigh").val()==""){
    		alert("请填写失踪者身高");
    		return false;
    	}else if($("#MissingPersonForm").val()==""){
    		alert("请填写失踪人籍贯");
    		return false;
    	}else if($("#MissingPersonPlace").val()==""){
    		alert("请填写失踪地点");
    		return false;
    	}else if($("#MissingPersonFeature").val()==""){
    		alert("请填写失踪人特征");
    		return false;
    	}else if($("#MissingHappend").val()==""){
    		alert("请填写失踪经过");
    		return false;
    	}else if($("#ContactsName").val()==""){
    		alert("请填写联系人姓名");
    		return false;
    	}else if($("#relationship").val()==""){
    		alert("请填写与失踪者关系");
		return false;
			}
    	else if($("#telephonenumber").val()==""){ContactsName
    		alert("请填写联系方式");
    		return false;
    	}
    	else if($("#email").val()==""){ContactsName
    		alert("请填写邮箱");
    		return false;
    	}
    	else if($("#address").val()==""){ContactsName
    		alert("请填写地址");
    		return false;
    	}
    	

    	return true;
    }

</script>

</body>
</html>