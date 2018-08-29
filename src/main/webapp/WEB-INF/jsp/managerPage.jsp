<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
<title>管理</title>    
	  
    <link rel="stylesheet" type="text/css" href="../css/nav.css"> 
    <link rel="stylesheet" type="text/css" href="../font/iconfont.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/nav.js"></script>
	
</head> 
<body>    
    <div class="nav" style="float:left;">
        <div class="nav-top">
            <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="../images/mini.png" ></div>
        </div>
        <ul>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>账号信息</span><i class="my-icon nav-more"></i></a>
                <ul>
                    <li><a onclick="showUserInformation()"><span style="cursor:pointer">显示所有账号</span></a></li>
                    <li><a onclick="showVolunteer()"><span style="cursor:pointer">志愿者信息</span></a></li>
                    <li><a onclick="totalCount()" ><span style="cursor:pointer">统计</span></a></li>
                </ul> 
            </li>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>走失儿童信息</span><i class="my-icon nav-more"></i></a>
                <ul>
                    <li><a onclick="showMissingPersonInformation()"><span style="cursor:pointer">家庭寻亲</span></a></li>
                    <li><a onclick="showTrampPersonInformation()"><span style="cursor:pointer">流浪乞丐</span></a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>留言板</span><i class="my-icon nav-more"></i></a>
                <ul>
                    <li><a onclick="showMessage()"><span style="cursor:pointer">留言板信息</span></a></li>   
                    <li><a onclick="undelMessage()"><span style="cursor:pointer">没处理的留言信息</span></a></li>    
                </ul>
            </li>
        </ul>
    </div>  



	<center><div id="data" " >
</div>
</center>
<%-- <center><div style="display:none" id="div4">
 <center> <p style="color:red;font-size:16px;">走失儿童信息</p></center>  
 
 <c:forEach items="${listMissingPerson}" var="record" varStatus="status">
 <a href="/userLogin/user/MissingPersonInformation?id=${record.missingPersonId} "><div style="float:left;width:125px;height:150px;margin-left:1.5cm;margin-top:1cm;">
<img src="${record.missingPersonPic}" width="120" height="120"/>
<p style="text-align: center">${record.missingPersonName}</p>
</div>
</a>
  </c:forEach>  
</div></center> --%> 


<script>
 function showUserInformation(){//用户账号信息
 	$.ajax({//请求数据
		type:"get",
		dataType:"json",
		url:"/userLogin/manager/allMessage",
		success:function(result){
		     var dataObj = result; //返回的result为json格式的数据
		str = "<p style=color:red;font-size:18px>"+"用户信息"+"</p>"+
		  "<table cellspacing=0 border=1 width=750 style=border-collapse:collapse>"+
			"<tr>"+"<th>"+"用户名"+"</th>"+"<th>"+"密码"+"</th>"+"<th width=150>"+"身份证号码"+"</th>"+"<th width=150>"+"电话号码"+"</th>"+"<th>"+"邮箱"+"</th>"+"<th width=200>"+"喜欢的地方"+"</th>"+"<th width=200>"+"喜欢的明星"+"</th>"+
			"<th width=100 >"+"操作"+"</th>"+"<th width=100 >"+"操作"+"</th>"+"</tr>";
	  $.each(dataObj, function(index, item)  
	{ 		
			var id=item.userId.toString();
		  str+= 	" <tr>"+"<td align=center>"+item.username+"</td>"+
				"<td align=center>"+item.password+"</td>"+
				"<td align=center>"+item.idcard+"</td>"+
				"<td align=center>"+item.telephonenumber+"</td>"+
				"<td align=center>"+item.email+"</td>"+
				"<td align=center>"+item.likeplace+"</td>"+
				"<td align=center>"+item.likestar+"</td>"+
				"<td align=center>"+"<a id=delete"+index+"  onclick=deleteUserInformation("+id+") style=cursor:pointer;color:blue>"+"删除"+"</a>"+"</td>"+ 
				"<td align=center>"+"<a id=change"+index+"  onclick=changeUserInformation("+id+") style=cursor:pointer;color:blue>"+"修改"+"</a>"+"</td>"+ 
				"</tr>"
				/* onclick=deleteUserInformation("+id+") */
		 }); 
	  str+="</table>" 
	  $("#data").html(str);	
		}	
	}); 

	
} 
 function showVolunteer(){//志愿者信息
	 	$.ajax({//请求数据
			type:"get",
			dataType:"json",
			url:"/userLogin/manager/volunteer",
			success:function(result){
			     var dataObj = result; //返回的result为json格式的数据
			str = "<p style=color:red;font-size:18px>"+"志愿者信息"+"</p>"+
			  "<table cellspacing=0 border=1 width=750 style=border-collapse:collapse>"+
				"<tr>"+"<th>"+"编号"+"</th>"+"<th>"+"用户名"+"</th>"+"<th>"+"姓名"+"</th>"+"<th width=150>"+"年龄"+"</th>"+"<th width=150>"+"电话号码"+"</th>"+"<th>"+"邮箱"+"</th>"+"<th width=200>"+"地址"+"</th>"+
				"</tr>";
		  $.each(dataObj, function(index, item)  
		{ 		
				
			  str+= 	" <tr>"+"<td align=center>"+item.volunteerId+"</td>"+
					"<td align=center>"+item.username+"</td>"+
					"<td align=center>"+item.name+"</td>"+
					"<td align=center>"+item.age+"</td>"+
					"<td align=center>"+item.email+"</td>"+
					"<td align=center>"+item.telephonenumber+"</td>"+
					"<td align=center>"+item.address+"</td>"+
				
					"</tr>"
					/* onclick=deleteUserInformation("+id+") */
			 }); 
		  str+="</table>" 
		  $("#data").html(str);	
			}	
		}); 

		
	} 
 
 
 
 
 function deleteUserInformation(id)//删除用户
 {

	 if(window.confirm("你确定要删除该用户吗"))
	 {
		 
	 	$.ajax({//请求数据
			type:"get",
			data: {"id":""+id+""},
			dataType:"json",			
			url:"/userLogin/manager/deleteUserInformation",
			 
			success:function(result){
				
			}
		}); 
	 	showUserInformation(); 
	 	
 } 
	 
	 alert("删除成功"); 
 }
  function changeUserInformation(id)//更改用户信息
{
		$.ajax({//请求数据
			type:"get",
			data: {"id":""+id+""}, 
			dataType:"json",			
			url:"/userLogin/manager/aUser",		 
			success:function(result){
				var dataObj=result; 
				str="";
		
				$.each(dataObj,function(index,item){
			//		console.log(item.username);
					str+="<p  style=color:red;font-size:18px>"+"信息更改"+"</p>"+
					
					"<table cellspacing=0 border=1 width=300 style=border-collapse:collapse>"+
					"<tr>"+"<td>"+"用户名"+"</td>"+"<td >"+"<input  id=username type=text name=username  readonly = readonly  style= background-color:transparent  value="+item.username+">"+"</td>"+"</tr>"+ 	
					"<tr>"+"<td>"+"用户编号"+"</td>"+"<td >"+"<input type=text id=userId  name=userId   readonly = readonly   style= background-color:transparent  value="+item.userId+">"+"</td>"+"</tr>"+

					"<tr>"+"<td>"+"密码"+"</td>"+"<td >"+"<input type=text name=password id=password style= background-color:transparent  value="+item.password+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"身份证号码"+"</td>"+"<td >"+"<input type=text   name=idcard id=idcard style= background-color:transparent  value="+item.idcard+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"电话号码"+"</td>"+"<td >"+"<input type=text name=telephonenumber   id=telephonenumber style= background-color:transparent value="+item.telephonenumber+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"邮箱"+"</td>"+"<td >"+"<input type=text name=email id=email style= background-color:transparent  value="+item.email+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"喜欢的地方"+"</td>"+"<td >"+"<input type=text name=likeplace id=likeplace style= background-color:transparent  value="+item.likeplace+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"喜欢的明星"+"</td>"+"<td >"+"<input type=text name=likestar id=likestar  style= background-color:transparent value="+item.likestar+">"+"</td>"+"</tr>"+
				"</table>"+"<button  onclick=check() >"+
				"修改"+"</button>"
/* 				onclick=check(\""+$("#userId").val()+"\",\""+$("#username").val()+"\",\""+$("#password").val()+"\",\""+$("#password").val()+"\",\""+$("#password").val()+"\",\""+$("#password").val()+"\",\""+$("#password").val()+"\",\""+$("#password").val()+"\")
 */				});
				
			
				$("#data").html(str);	
			}			
		}); 
		
}  
  function check(){//更改用户信息
	  var userId=	$("#userId").val();
	  var username=	$("#username").val();
	  var password=	$("#password").val();
	  var idcard=	$("#idcard").val();
	  var telephonenumber=	$("#telephonenumber").val();
	  var email=	$("#email").val();
	  var likeplace=	$("#likeplace").val();
	  var likestar=	$("#likestar").val();
	 
	  if(window.confirm("你确定要修改该用户信息?")){
		  if(password=="" || idcard==""||telephonenumber==""||email==""&&idcard==""||likeplace==""||likestar==""){
			  alert("信息不能为空"); 
		  }
		  else{
	 	$.ajax({
			type:"post",
			data: {"userId":""+userId+"","username":""+username+"","password":""+password+"","idcard":""+idcard+"","telephonenumber":""+telephonenumber+"","email":""+email+"","likeplace":""+likeplace+"","likestar":""+likestar+"",}, 
			dataType:"json",			
			url:"/userLogin/manager/changeUser",
				
		});
		alert("修改成功");
		showUserInformation(); 
	  }
 	
	  } 
	  
	  else {
	  window.event.returnValue = false;  //阻止表单上传
  }
  }
  
 function totalCount()//统计
 {
	 $.ajax({
		 type:"get",
		 dataType:"json",
		 url:"/userLogin/manager/total",
		 success:function(result){
			 var dataObj=result;
			 str="";
			 $.each(dataObj,function(index,item){
				 str+="<p  style=color:red;font-size:18px>"+"统计"+"</p>" +"<table cellspacing=0 border=1 width=450 style=border-collapse:collapse>"+
			 	 "<tr>"+"<td>"+"注册用户数"+"</td>"+"<td align=center>"+item.totalUser+"</td>"+"</tr>"+
			 	  "<tr>"+"<td>"+"走失儿童数"+"</td>"+"<td align=center>"+item.totalTrampPerson+"</td>"+"</tr>"+
			 	  "<tr>"+"<td>"+"流浪乞丐数"+"</td>"+"<td align=center>"+item.totalMissinPerson+"</td>"+"</tr>"+
			 	 "<tr>"+"<td>"+"留言板总数"+"</td>"+"<td align=center>"+item.totalMessage+"</td>"+"</tr>"+
			 	"<tr>"+"<td>"+"留言信息未处理数"+"</td>"+"<td align=center>"+item.totalUndelMessage+"</td>"+"</tr>"  
			 	 +"</table>"
			 	  
			 });
			
			$("#data").html(str);	
		 }
	 })

 
 } 

 function showMissingPersonInformation(){  //走失儿童图片
 	$.ajax({  
		type:"get",
		dataType:"json",
		url:"/userLogin/manager/allMissingPerson",
		success:function(result){
			 var dataObj = result; 
			 str="";
			 $.each(dataObj,function(index,item){
 	
		 	 var id=item.missingPersonId.toString();
		 //	 console.log(id);
		// 	str +="<a href=/userLogin/manager/missingPersonInformation?id="+id+">"+			
		 str+=	 "<img id=img"+index+" src="+item.missingPersonPic+" width=120 height=120 style=cursor:pointer onclick=aMissingPersonInformation("+id+") >"+"</img>"
		 	
					 } );
			 $("#data").html(str);	
		}
	}); 
 

}
 function showTrampPersonInformation(){//流浪乞丐图片
	 	$.ajax({
			type:"get",
			data:"json",
			url:"/userLogin/manager/allTrampPerson",
			success:function(result){
				 var dataObj = result; 
				 str="";				
				 $.each(dataObj,function(index,item){
				
					 var id=item.trampPersonId.toString();
			 	  str+="<img id=img"+index+" src="+item.trampPersonPic+" style=cursor:pointer   width=120 height=120   onclick=aTrampPersonInformation("+id+")>"+"</img>"	
						 } );
				 $("#data").html(str);		 
			}
		}); 

 }

 function aMissingPersonInformation(id){ //走失儿童信息
	  	 $.ajax({
		type:"get",
		data: {"id":""+id+""},
		dataType:"json",
		url:"/userLogin/manager/missingPersonInformation",
		 success:function(result){
			 var dataObj = result; 
			 str="";				
			 $.each(dataObj,function(index,item){

			var id=item.missingPersonId.toString();
		 	  str+="<p  style=color:red;font-size:18px>"+"走失儿童信息"+"</p>"+
		 		  "<img id=img"+index+" src="+item.missingPersonPic+" width=120 height=120 >"+"</img>"	+"</br>"+
		 	  "<table cellspacing=0 border=1 width=450 style=border-collapse:collapse>"+
		 	 "<tr>"+"<td>"+"案件编号"+"</td>"+"<td align=center>"+item.missingPersonId+"</td>"+"</tr>"+
		 	  "<tr>"+"<td>"+"上传用户"+"</td>"+"<td align=center>"+item.username+"</td>"+"</tr>"+
		 	  "<tr>"+"<td>"+"走失儿童姓名"+"</td>"+"<td align=center>"+item.missingPersonName+"</td>"+"</tr>"+
		 	  "<tr>"+"<td>"+"性别"+"</td>"+"<td align=center>"+item.missingPersonSex+"</td>"+"</tr>"+
		 	 "<tr>"+"<td>"+"身高"+"</td>"+"<td align=center>"+item.missingPersonId+"</td>"+"</tr>"+
		 	"<tr>"+"<td>"+"失踪日期"+"</td>"+"<td align=center>"+item.missingDate+"</td>"+"</tr>"+
		 	"<tr>"+"<td>"+"籍贯"+"</td>"+"<td align=center>"+item.missingPersonForm+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"失踪地点"+"</td>"+"<td align=center>"+item.missingPersonPlace+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"外貌特征"+"</td>"+"<td align=center>"+item.missingPersonFeature+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"走失经过"+"</td>"+"<td align=center>"+item.missingHappend+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"其他说明"+"</td>"+"<td align=center>"+item.other+"</td>"+"</tr>"+
			"</table>"+
			"<p style=color:red;font-size:18px>"+"联系人信息"+"</p>"+
			  "<table cellspacing=0 border=1 width=550 style=border-collapse:collapse>"+
			"<tr>"+"<th>"+"联系人姓名"+"</th>"+"<th>"+"与失踪宝宝关系"+"</th>"+"<th>"+"电话号码"+"</th>"+"<th>"+"邮箱"+"</th>"+"<th>"+"地址"+"</th>"+"</tr>"+
			" <tr>"+"<td align=center>"+item.contactsName+"</td>"+
			"<td align=center>"+item.relationship+"</td>"+
			"<td align=center>"+item.telephonenumber+"</td>"+
			"<td align=center>"+item.email+"</td>"+
			"<td align=center>"+item.address+"</td>"+"</tr>"+
			"</table>"+"<p onclick=changeMessage("+id+") style=color:red;font-size:18px;cursor:pointer >"+" 点击修改信息"+"</p>"
					 } );
			 $("#data").html(str);	
		 }  
		
	 }); 
		
 }
 
 function changeMessage(id){ //修改走失儿童信息
	$.ajax({
		type:"get",
		data: {"id":""+id+""},
		dataType:"json",
		url:"/userLogin/manager/missingPersonInformation",
		success:function(result){
			var dataObj=result;
			str="";
			$.each(dataObj,function(index,item){
				str+="<p  style=color:red;font-size:18px>"+"走失儿童信息"+"</p>"+
				 "<img id=img"+index+" src="+item.missingPersonPic+" width=120 height=120 >"+"</img>"	+
				"<table cellspacing=0 border=1 width=300 style=border-collapse:collapse>"+
				"<tr>"+"<td>"+"案件编号"+"</td>"+"<td >"+"<input  id=MissingPersonId type=text name=MissingPersonId  readonly = readonly  style= background-color:transparent  value="+item.missingPersonId+">"+"</td>"+"</tr>"+ 	
				"<tr>"+"<td>"+"上传用户"+"</td>"+"<td >"+"<input type=text id=username  name=username   readonly = readonly   style= background-color:transparent  value="+item.username+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"走失儿童姓名"+"</td>"+"<td >"+"<input type=text name=MissingPersonName id=MissingPersonName style= background-color:transparent  value="+item.missingPersonName+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"性别"+"</td>"+"<td >"+"<input type=text   name=MissingPersonSex id=MissingPersonSex style= background-color:transparent  value="+item.missingPersonSex+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"身高"+"</td>"+"<td >"+"<input type=text name=MissingPersonHigh   id=MissingPersonHigh style= background-color:transparent value="+item.missingPersonHigh+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"失踪日期"+"</td>"+"<td >"+"<input type=text name=MissingDate id=MissingDate style= background-color:transparent  value="+item.missingDate+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"籍贯"+"</td>"+"<td >"+"<input type=text name=MissingPersonForm id=MissingPersonForm style= background-color:transparent  value="+item.missingPersonForm+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"失踪地点"+"</td>"+"<td >"+"<input type=text name=MissingPersonPlace id=MissingPersonPlace  style= background-color:transparent value="+item.missingPersonPlace+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"外貌特征"+"</td>"+"<td >"+"<input type=text name=MissingPersonFeature id=MissingPersonFeature  style= background-color:transparent value="+item.missingPersonFeature+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"走失经过"+"</td>"+"<td >"+"<input type=text name=MissingHappend id=MissingHappend  style= background-color:transparent value="+item.missingHappend+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"其他说明"+"</td>"+"<td >"+"<input type=text name=other id=other  style= background-color:transparent value="+item.other+">"+"</td>"+"</tr>"+
			"</table>"+"<p  style=color:red;font-size:18px>"+"联系人信息"+"</p>"+
			"<table cellspacing=0 border=1 width=300 style=border-collapse:collapse>"+
			"<tr>"+"<td>"+"联系人姓名"+"</td>"+"<td >"+"<input type=text name=ContactsName id=ContactsName style= background-color:transparent  value="+item.contactsName+">"+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"与宝宝关系"+"</td>"+"<td >"+"<input type=text name=relationship id=relationship  style= background-color:transparent value="+item.relationship+">"+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"电话"+"</td>"+"<td >"+"<input type=text name=telephonenumber id=telephonenumber  style= background-color:transparent value="+item.telephonenumber+">"+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"邮箱"+"</td>"+"<td >"+"<input type=text name=email id=email  style= background-color:transparent value="+item.email+">"+"</td>"+"</tr>"+
			"<tr>"+"<td>"+"地址"+"</td>"+"<td >"+"<input type=text name=address id=address  style= background-color:transparent value="+item.address+">"+"</td>"+"</tr>"+
			"</table>"+
			
			"<button  onclick=checkFamily() >"+
			"修改"+"</button>"
			});
			 $("#data").html(str);	
		}
		
	});
	 
 }
 function checkFamily(){//修改走失儿童信息
	 var MissingPersonId=	$("#MissingPersonId").val(); var username=	$("#username").val(); var MissingPersonName=$("#MissingPersonName").val();
	 var MissingPersonSex=	$("#MissingPersonSex").val(); var MissingPersonHigh=$("#MissingPersonHigh").val(); var MissingDate=	$("#MissingDate").val();
	 var MissingPersonForm=	$("#MissingPersonForm").val(); var MissingPersonPlace=	$("#MissingPersonPlace").val(); var MissingPersonFeature=	$("#MissingPersonFeature").val();
	 var MissingHappend=	$("#MissingHappend").val();var other=	$("#other").val();
	 var ContactsName=	$("#ContactsName").val();var relationship=	$("#relationship").val();var telephonenumber=	$("#telephonenumber").val();
	 var email=	$("#email").val();var address=	$("#address").val();
	 
	  if(window.confirm("你确定要修改该用户信息?")){
		  if(MissingPersonName=="" || MissingPersonSex==""||MissingPersonHigh==""||MissingDate==""||MissingPersonForm==""||MissingPersonPlace==""||MissingPersonFeature==""||MissingHappend==""||other==""||ContactsName==""||relationship==""||telephonenumber==""||email==""||address==""){
			  alert("信息不能为空"); 
		  }
		  else{
	 	$.ajax({
			type:"post",
			data: {"MissingPersonId":""+MissingPersonId+"","username":""+username+"","MissingPersonName":""+MissingPersonName+"","MissingPersonSex":""+MissingPersonSex+"","MissingPersonHigh":""+MissingPersonHigh+"","MissingDate":""+MissingDate+"","MissingPersonForm":""+MissingPersonForm+"","MissingPersonPlace":""+MissingPersonPlace+"",
				"MissingPersonFeature":""+MissingPersonFeature+"","MissingHappend":""+MissingHappend+"","other":""+other+"","ContactsName":""+ContactsName+"","relationship":""+relationship+"","telephonenumber":""+telephonenumber+"","email":""+email+"","address":""+address+""}, 
			dataType:"json",			
			url:"/userLogin/manager/changeFamily",
				
		});
		alert("修改成功");
		aMissingPersonInformation(MissingPersonId);
	  }
 	
	  } 
	  
	  else {
	  window.event.returnValue = false;  //阻止表单上传
  }
	 
 }
 
 function aTrampPersonInformation(id){ //流浪乞丐信息
  	 $.ajax({
	type:"get",
	data: {"id":""+id+""},
	dataType:"json",
	url:"/userLogin/manager/trampPersonInformation",
	 success:function(result){
		 var dataObj = result;  
		 str="";				
		 $.each(dataObj,function(index,item){

	
	 	  str+="<p  style=color:red;font-size:18px>"+"流浪乞丐信息"+"</p>"+
	 		  "<img id=img"+index+" src="+item.trampPersonPic+" width=120 height=120 >"+"</img>"	+"</br>"+
	 	  "<table cellspacing=0 border=1 width=450 style=border-collapse:collapse>"+
	 	 "<tr>"+"<td>"+"案件编号"+"</td>"+"<td align=center>"+item.trampPersonId+"</td>"+"</tr>"+
	 	  "<tr>"+"<td>"+"上传用户"+"</td>"+"<td align=center>"+item.username+"</td>"+"</tr>"+
	 	  "<tr>"+"<td>"+"流浪者姓名"+"</td>"+"<td align=center>"+item.trampPersonName+"</td>"+"</tr>"+
	 	  "<tr>"+"<td>"+"性别"+"</td>"+"<td align=center>"+item.trampPersonSex+"</td>"+"</tr>"+
	 	 "<tr>"+"<td>"+"身高"+"</td>"+"<td align=center>"+item.trampPersonHigh+"</td>"+"</tr>"+
	 	"<tr>"+"<td>"+"地点"+"</td>"+"<td align=center>"+item.trampPersonPlace+"</td>"+"</tr>"+
	 	"<tr>"+"<td>"+"外貌特征"+"</td>"+"<td align=center>"+item.trampPersonFeature+"</td>"+"</tr>"+
		"<tr>"+"<td>"+"其他说明"+"</td>"+"<td align=center>"+item.other+"</td>"+"</tr>"+
		
		"</table>"+
		"<p style=color:red;font-size:18px>"+"联系人信息"+"</p>"+
		  "<table cellspacing=0 border=1 width=550 style=border-collapse:collapse>"+
		"<tr>"+"<th>"+"联系人姓名"+"</th>"+"<th>"+"电话号码"+"</th>"+"<th>"+"邮箱"+"</th>"+"</tr>"+
		" <tr>"+"<td align=center>"+item.contactsName+"</td>"+
		"<td align=center>"+item.telephonenumber+"</td>"+
		"<td align=center>"+item.email+"</td>"+
	
		"</table>"+
		"<p onclick=changeTrampMessage("+id+") style=color:red;font-size:18px;cursor:pointer >"+" 点击修改信息"+"</p>"
				 } );
		 $("#data").html(str);	
	 }  
	
 }); 

}
 function changeTrampMessage(id){ //修改流浪乞丐信息
		$.ajax({
			type:"get",
			data: {"id":""+id+""},
			dataType:"json",
			url:"/userLogin/manager/trampPersonInformation",
			success:function(result){
				var dataObj=result;
				str="";
				$.each(dataObj,function(index,item){
					str+="<p  style=color:red;font-size:18px>"+"流浪乞丐信息"+"</p>"+
					 "<img id=img"+index+" src="+item.trampPersonPic+" width=120 height=120 >"+"</img>"	+
					"<table cellspacing=0 border=1 width=300 style=border-collapse:collapse>"+
					"<tr>"+"<td>"+"案件编号"+"</td>"+"<td >"+"<input  id=TrampPersonId type=text name=TrampPersonId  readonly = readonly  style= background-color:transparent  value="+item.trampPersonId+">"+"</td>"+"</tr>"+ 	
					"<tr>"+"<td>"+"上传用户"+"</td>"+"<td >"+"<input type=text id=username  name=username   readonly = readonly   style= background-color:transparent  value="+item.username+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"流浪者姓名"+"</td>"+"<td >"+"<input type=text name=TrampPersonName id=TrampPersonName style= background-color:transparent  value="+item.trampPersonName+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"性别"+"</td>"+"<td >"+"<input type=text   name=TrampPersonSex id=TrampPersonSex style= background-color:transparent  value="+item.trampPersonSex+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"身高"+"</td>"+"<td >"+"<input type=text name=TrampPersonHigh   id=TrampPersonHigh style= background-color:transparent value="+item.trampPersonHigh+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"地点"+"</td>"+"<td >"+"<input type=text name=TrampPersonPlace id=TrampPersonPlace style= background-color:transparent  value="+item.trampPersonPlace+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"外貌特征"+"</td>"+"<td >"+"<input type=text name=TrampPersonFeature id=TrampPersonFeature style= background-color:transparent  value="+item.trampPersonFeature+">"+"</td>"+"</tr>"+
					"<tr>"+"<td>"+"其他说明"+"</td>"+"<td >"+"<input type=text name=other id=other  style= background-color:transparent value="+item.other+">"+"</td>"+"</tr>"+
					
				"</table>"+"<p  style=color:red;font-size:18px>"+"联系人信息"+"</p>"+
				"<table cellspacing=0 border=1 width=300 style=border-collapse:collapse>"+
				"<tr>"+"<td>"+"联系人姓名"+"</td>"+"<td >"+"<input type=text name=ContactsName id=ContactsName style= background-color:transparent  value="+item.contactsName+">"+"</td>"+"</tr>"+		
				"<tr>"+"<td>"+"电话"+"</td>"+"<td >"+"<input type=text name=telephonenumber id=telephonenumber  style= background-color:transparent value="+item.telephonenumber+">"+"</td>"+"</tr>"+
				"<tr>"+"<td>"+"邮箱"+"</td>"+"<td >"+"<input type=text name=email id=email  style= background-color:transparent value="+item.email+">"+"</td>"+"</tr>"+

				"</table>"+
				
				"<button  onclick=checkTramp() >"+
				"修改"+"</button>"
				});
				 $("#data").html(str);	
			}
			
		});
		 
	 }
 function checkTramp(){// 修改走失儿童信息 
	 var TrampPersonId=	$("#TrampPersonId").val(); var username=	$("#username").val(); var TrampPersonName=$("#TrampPersonName").val();
	 var TrampPersonSex=	$("#TrampPersonSex").val(); var TrampPersonHigh=$("#TrampPersonHigh").val(); var TrampPersonPlace=	$("#TrampPersonPlace").val();
	 var TrampPersonFeature=	$("#TrampPersonFeature").val(); var other=	$("#other").val(); 

	 var ContactsName=	$("#ContactsName").val();var telephonenumber=	$("#telephonenumber").val();var email=	$("#email").val();
	 
	  if(window.confirm("你确定要修改该用户信息?")){
		  if(TrampPersonName=="" || TrampPersonSex==""||TrampPersonHigh==""||TrampPersonPlace==""||TrampPersonFeature==""||other==""||ContactsName==""||telephonenumber==""||email==""){
			  alert("信息不能为空"); 
		  }
		  else{
	 	$.ajax({
			type:"post",
			data: {"TrampPersonId":""+TrampPersonId+"","username":""+username+"","TrampPersonName":""+TrampPersonName+"","TrampPersonSex":""+TrampPersonSex+"","TrampPersonHigh":""+TrampPersonHigh+"","TrampPersonPlace":""+TrampPersonPlace+"","TrampPersonFeature":""+TrampPersonFeature+"","other":""+other+"",
				"ContactsName":""+ContactsName+"","telephonenumber":""+telephonenumber+"","email":""+email+""}, 
			dataType:"json",			
			url:"/userLogin/manager/changeTramp",
				
		});
		alert("修改成功");
		aTrampPersonInformation(TrampPersonId);
	  }
 	
	  } 
	  
	  else {
	  window.event.returnValue = false;  //阻止表单上传
  }
	 
 }
 
  function showMessage()//留言板
 {
	 $.ajax({//请求数据
			type:"get",
			dataType:"json",
			url:"/userLogin/manager/message",
			success:function(result){
			     var dataObj = result; //返回的result为json格式的数据
			    
			str = "<p style=color:red;font-size:18px>"+"用户留言板"+"</p>"+
			  "<table cellspacing=0 border=1 width=550 style=border-collapse:collapse>"+
				"<tr>"+"<th width=50>"+"编号"+"</th>"+"<th width=50>"+"用户名"+"</th>"+"<th width=250 >"+"留言信息"+"</th>"+"<th width=50  >"+"状态"+"</th>"+"</tr>";
		  $.each(dataObj, function(index, item)
		{ 		 var username=item.username.toString();
				str+=
					" <tr>"+"<td align=center>"+item.messageId+"</td>"+
					"<td  align=center>"+"<a>"+item.username+"</a>"+"</td>"+
					"<td>"+item.message+"</td>"+
					"<td  align=center onclick=changeStatus(\""+item.messageId+"\") style=cursor:pointer;color:blue>"+item.status+"</td>"  
					
					
									 
			 });
		  str+="</table>"
		  $("#data").html(str);	
			}	
		}); 
 }  
  function changeStatus(messageId){
	//  var username=$("#username").val();
	  var status =$("#status").val();

	  if(window.confirm("是否已经处理完该留言信息")){
		 
			$.ajax({
				type:"post",
				data: {"messageId":""+messageId+"","status":"已处理"}, 
				dataType:"json",			
				url:"/userLogin/manager/delMessage",
					
			});
		  alert("更改成功");
		  showMessage();
	  }
	  
  }
  
  function undelMessage()// 未处理留言信息
  {
		 $.ajax({//请求数据
				type:"get",
				dataType:"json",
				url:"/userLogin/manager/undelMessage",
				success:function(result){
				     var dataObj = result; //返回的result为json格式的数据
				str = "<p style=color:red;font-size:18px>"+"待处理留言信息"+"</p>"+
				  "<table cellspacing=0 border=1 width=550 style=border-collapse:collapse>"+
					"<tr>"+"<th width=50>"+"用户名"+"</th>"+"<th width=250 >"+"留言信息"+"</th>"+"<th width=250 >"+"状态"+"</th>"+"</tr>";
			  $.each(dataObj, function(index, item)
			{ 		
					str+=
						" <tr>"+"<td align=center>"+item.username+"</td>"+
						"<td>"+item.message+"</td>"+"<td align=center>"+item.status+"</td>"
				
						
				 });
			  str+="</table>"
			  $("#data").html(str);	
				}	
			}); 
	 }  

</script>

</body>
</html>