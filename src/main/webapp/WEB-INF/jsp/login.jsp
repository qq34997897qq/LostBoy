<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>  
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
<link rel="stylesheet" href="../css/bootstrap.css">
<link href="../iconfont/style.css" type="text/css" rel="stylesheet">
<h1 align="center" style="color:white;font-size:75px;font-family:Simsun ;">宝 贝 回 家 </h1>
 <h2 align="center" style="color:white;font-size:30px;">Baby come home</h2>
 
<style>
	body{color:#fff; font-family:"微软雅黑"; font-size:14px;}
	.wrap1{position:absolute; top:0; right:0; bottom:0; left:0; margin:auto }/*把整个屏幕真正撑开--而且能自己实现居中*/
	.main_content{background:url(../images/main_bg.png) repeat; margin-left:auto; margin-right:auto; text-align:left; float:none; border-radius:8px;}
	.form-group{position:relative;}
	.login_btn{display:block; background:#3872f6; color:#fff; font-size:15px; width:100%; line-height:50px; border-radius:3px; border:none; }
	#username{width:100%; border:1px solid #3872f6; border-radius:3px; line-height:40px; padding:2px 5px 2px 30px; background:none;}
	#password{width:100%; border:1px solid #3872f6; border-radius:3px; line-height:40px; padding:2px 5px 2px 30px; background:none;}
	.icon_font{position:absolute; bottom:15px; left:10px; font-size:18px; color:#3872f6;}
	.font16{font-size:16px;}
	.mg-t20{margin-top:20px;}
	@media (min-width:200px){.pd-xs-20{padding:20px;}}
	@media (min-width:768px){.pd-sm-50{padding:50px;}}
	#grad {
	  background: -webkit-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Safari 5.1 - 6.0 */
	  background: -o-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Opera 11.1 - 12.0 */
	  background: -moz-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Firefox 3.6 - 15 */
	  background: linear-gradient(#4990c1, #52a3d2, #6186a3); /* 标准的语法 */
	}
</style>

</head>

<body background="../images/background.jpg"style=" background-repeat:no-repeat;
background-size:100% 100% ; background-attachment:fixed;" >
<!-- ---------------------登录块 -------------------------  -->
    <div class="container wrap1" style="height:450px;">
           
            <div class="col-sm-8 col-md-5 center-auto pd-sm-50 pd-xs-20 main_content">
            
            <p id=result style="color:red"> ${result}</p>
               <p style="color:white;font-size:18px;text-algin:"center">用户登录</p>
           
                <form       action="/userLogin/user/checkLogin" method="post"  onsubmit="return check()">
                    <div class="form-group mg-t20">
                        <i class="icon-user icon_font"></i>
                        <input type="text" name="username" id="username" placeholder="请输入用户名" />
                    </div>
                    <div class="form-group mg-t20">
                        <i class="icon-lock icon_font"></i>
                        <input type="password" name="password" id="password" placeholder="请输入密码" />
                    </div>
                   
                    <button style="submit" class="login_btn" ">登 录</button>	
				<a href="register">	<p style=" float:left;   text-align:center;">注册账号</p></a>
				<a href="changepassword"><p style=" float:right;   text-align:center;">修改密码</p></a>
			
					
               </form>
        </div><!--row end-->
    </div><!--container end-->
<div style="text-align:center;">
</div>      
	
	<script>
	
function check(){
	if($("#username").val()==""){
		alert("请输入用户名");
		return false;
	}else if($("#password").val()==""){
		alert("请输入密码");
		return false;
	}

	return true;
}
$("#username").click(function(){
	$("#result").html("");
});
/* function login(){
	$.ajax({
		type:"get",
		data:"text",
		url:"/userLogin/user/checkLogin",
		success:function(response){
			alert($(result));
			if(result=="failed"){
				alert("用户名或密码错误");
			}
			else{
				action="/userLogin/user/success"
			}
			
		}
		
		
	});
	
	
} */
	</script>
</body>
</html>
