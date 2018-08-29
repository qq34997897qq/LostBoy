<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>  
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<p>${sessionScope.result}</p>
<body background="../images/background2.jpg"style=" background-repeat:no-repeat;
background-size:100% 100% ; background-attachment:fixed;" >
 <div class="div"  align="center" style="
background-color:white;width:440px;height:750px;margin:0 auto;">  
<p align="center" style="color:green;font-size:30px">注册界面</p>
  <p id="result" style="color:red"> ${result}</p>

<form action="/userLogin/user/checkRegister" method="post" onsubmit="return check()">
			 <center><input id="username" name="username" type="text" placeholder="用户名" 
 style = "width:200px;height:30px; margin-top:35px  " ></center></br>
			   
			 <center><input id="password"  name="password"type="password" placeholder="密码" 
 style = "width:200px;height:30px" ></center>     
 
 			 <center><input id="repassword" name="repassword" type="password" placeholder="确认密码" 
 style = "width:200px;height:30px; margin-top:30px  " ></center></br>
			   
			 <center><input id="telephonenumber" name="telephonenumber" type="text" placeholder="手机号码" 
 style = "width:200px;height:30px" ></center></br>
  <center><input id="email"  name="email"type="email" placeholder="邮箱"  
 style = "width:200px;height:30px" ></center></br>
 <center><input id="idcard"  name="idcard"type="text" placeholder="身份证号码"  
 style = "width:200px;height:30px" ></center></br>
  喜欢的地方：<center><input id="likeplace" name="likeplace" type="text" 
 style = "width:200px;height:30px" ></center></br>
  喜欢的明星：<center><input id="likestar" name="likestar" type="text" 
 style = "width:200px;height:30px" ></center></br>
 <p style="color:red;font-size:15px">(认真填写，用于找回密码)</p>
<input type="submit" value="注册" 
 style="height:35px; width:100px;background-color:green;color: white;text-align="center";">

<a href="login"><button type="button"  style="height:35px; width:100px;background-color:green;color: white;text-align="center";">    
返回</button></a>
     </form>
   

</div>

 	<script>
function check(){

	
	if($("#username").val()==""){
		alert("请输入姓名");
		return false;
	}else if($("#password").val()==""){
		alert("请输入密码");
		return false;
	}else if($("#telephonenumber").val()==""){
		alert("请输入手机号码");
		return false;
	}else if($("#email").val()==""){
		alert ("请输入邮箱");
		return false;
	}else if($("#idcard").val()==""){
		alert ("请输入身份证号码");
		return false;
	}
	else if($("#password").val()!=$("#repassword").val()){
		alert("密码不一致");
		$("#password").val("");
		$("#repassword").val("");
		return false;
	}
	else if($("#likeplace").val()==""|$("#likestar").val()==""){
		alert("请填写重要信息，方便找回密码");
		return false;
	}
	return true;
} 

$("#username").click(function(){
	$("#result").html("");
});

	</script>
         


</body>
</html>