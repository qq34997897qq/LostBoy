<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>走失登记</title>
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

<div class="div"  style="background-color:#E0FFFF;height:2200px;margin:0 auto;margin-top:75px">   
<%--   <p id=result style="color:red"> ${user.username}</p> --%>
<p align="center" style="color:red;font-size:25px;">寻亲登记说明</p>
<p style="line-height:35px;margin-top:0.3cm">

  &nbsp &nbsp  宝贝回家志愿者协会（以下简称本协会）是由关爱儿童的各界爱心人士自愿组成的民间志愿者组织，于2008年1月18日在民政部门正式注册，是具有独立法人资格的非营利性社会公益团体。 
    《宝贝回家寻子网》，即www.baobeihuijia.com是隶属于宝贝回家志愿者协会的公益性寻人网站，为失踪儿童、家长提供免费的寻人帮助，帮助走失、被拐、被遗弃儿童寻找亲人，帮助因各种原因流浪、乞讨、卖艺的儿童回归家庭。本协会及网站已按照相关规定在信息产业部和公安部门完成了备案。本协会及网站的宗旨是：关爱儿童，共筑和谐。 
    进行寻亲登记之前，请认真阅读以下内容及法律声明：当您的孩子失踪或被拐后，请马上拨打110报警。 </br>
1、宝贝回家寻子网接受失踪或被拐时16周岁以下儿童的登记信息及流浪乞讨儿童的登记信息，超过16周岁或不属于失踪或被拐的儿童信息，需在家属同意并且相关资料完整的情况下在“其他寻人”区域进行登记。如果您所登记的信息超过16周岁资料信息不完整或不属于失踪被拐范围，请访问宝贝回家论坛的其它寻人版块http://bbs.baobeihuijia.com/forum-21-1.html，注册后将寻亲信息发布在其它寻人版块。</br>
2、本协会为寻亲者提供免费的寻人帮助，请如实填写您在网站登记的资料。</br>
3、请不要利用宝贝回家寻子网站发布虚假寻人信息或恶作剧信息，本协会将保留一切追究法律责任的权利。 </br>
4、以下情况，请您与您的家人或孩子现在的抚养人协商后再决定是否进行登记操作：①离家出走；②被亲生父亲或母亲带走；③将亲生子女卖掉或送人；④父母离异，孩子判给另一方，想要回孩子的抚养权。 </br>
5、由于网络的连通性及实时性的特殊，您在宝贝回家登记的信息通过审核后，将会被转载到全国各地的论坛，宝贝回家只能对本站及论坛的资料进行修改及删除，无法对被转载到其它论坛的资料进行修改及删除等操作。 </br>
6、在您登记的信息审核通过以后，我们会将您的信息下发给工作组的志愿者进行跟进，跟进过程中，志愿者会与您联系确认登记内容；为了防止被骗，当有其它人与您联系说知道您孩子的情况时，请将通话内容及短信内容记录下来，与跟进志愿者或网站办公室进行沟确认通后，再看下一步如何进行；如果有人给您以彩信或电子邮件形式发送您孩子的照片，请将该照片转给跟进志愿者或者网站的邮箱，以辩认是否为合成图像。 </br>
7、宝贝回家寻子网及宝贝回家志愿者协会志愿者所提供的寻人服务不会收取您任何费用，如果有任何人以宝贝回家名义向您索取财物，请直接报警或与宝贝回家办公室联系。 </br></p>
8、如果您在寻亲信息中登记的联系方式发生变化，请您通知宝贝回家办公室。 </br></br></br>

<p align="center" style="color:red;font-size:25px;align:"center"">法律声明</p>
<p style="line-height:35px;margin-top:0.3cm">

    宝贝回家志愿者协会（以下简称本协会）是由关爱儿童的各界爱心人士自愿组成的民间志愿者组织，于2008年1月18日在民政部门正式注册，是具有独立法人资格的非营利性社会公益团体。《宝贝回家寻子网》，即http://www.baobeihuijia.com是隶属于宝贝回家志愿者协会的公益性寻人网站，为失踪儿童、家长提供免费的寻人帮助，帮助走失、被拐、被遗弃儿童寻找亲人，帮助因各种原因流浪、乞讨、卖艺的儿童回归家庭。本协会及网站已按照相关规定在信息产业部和公安部门完成了备案。本协会及网站的宗旨是：关爱儿童，共筑和谐。</br>
（一）立场原则 </br>
1、 本协会及网站坚决拥护中国共产党的领导，维护祖国统一，自觉遵守《全国人大常委会关于维护互联网安全的决定》及中华人民共和国的各项法律法规，坚持爱国、守法、自律、真实、文明的原则，尊重网络道德。  </br>
2、 本协会及网站坚决反对任何危害国家安全、民族团结，破坏国家宗教政策、社会稳定的活动和行为，禁止任何含有侮辱、诽谤、教唆、淫秽及攻击性内容的信息和作品。不组织、不提倡、不参与任何示威、游行、上访等活动。本协会及网站谢绝一切境外媒体的采访与合作。 </br>
（二）免责条款  </br>
1、本协会及网站所提供的信息，只供参考之用，不应用于任何商业用途。不保证该等信息的准确性、有效性、及时性或完整性。本协会及网站一概毋须以任何方式就任何信息传递或传送的不准确或错误对用户或第三人负任何直接或间接的责任。用户应为使用本网站承担全部责任和风险。本协会及网站保留自行决定修改本网站中任何部分内容的权利。  </br>
2、本协会及网站尊重他人的知识产权和合法权利，同时要求用户也给予尊重。本协会及网站发布的任何信息，如侵犯他人合法权利或违反相关法律法规，一经权利人提出异议，本网站在承担立即删除该信息的义务外，不再承担其他任何的法律责任。用户使用不当或未经授权发布信息，侵犯他人知识产权或其它合法权益，独立承担由此引起的一切后果和法律责任，与本协会及网站无关。用户在本网站上表述的任何意见均属于发表者个人意见，并不代表本协会及网站的意见。  </br>
3、本网站可能会提供由第三方发起并维护之特定互联网站的链接。网站提供该等链接的目的仅在于向用户提供方便。本协会及网站对链接内容不作任何暗示和保证。第三方网站对本网站的链接，并不表示本协会及网站对第三方作出了某种认可、授权，或表明其属于本协会及网站的关联组织、合作组织或业务伙伴。在多数情况下，本网站并未意识到第三方已提供对本网站的链接，也不承担由此引起的任何责任。 </br>
（三）敬告用户  </br>
1、本协会及网站享有以任何形式无偿使用、转载和引用用户向本协会或网站提交的启事和有关信息的权利，同时保留对用户发布信息管理、修改、删除的权利。 </br>
2、本协会及网站善意提醒信息发布者审慎管理个人信息，且勿轻信陌生人的电话，谨防上当受骗。用户在寻人启事中如若承诺了酬金，则由悬赏者自己承担，相关事宜由双方自行协商，用户通过使用本网站免费寻人服务平台所引起的一切纠纷与本协会及网站无关。 </br>　
3、本网站只是为志愿者与失踪儿童家长提供信息交流与共享的平台。本网站的信息均由本协会统一发布，未经本协会书面授权，任何人不得以“宝贝回家”名义组织活动、接受采访或发布信息，对于违反本声明的志愿者，本协会将取消其会员资格。对于违反本声明的用户，本协会及网站将立即终止对其所提供的所有服务。 </br>
4、本协会及网站保留在任何时间自行修改、增删本法律声明中任何内容的权利。用户每次登陆或使用本网站时均视为同意受当时有效的条款的制约。该法律声明的解释权归本协会及网站所有。  </br>
5、本法律声明的制定、执行、解释及争议的解决适用中华人民共和国法律。请认真阅读以上信息并确认是否进行登记；如果确认登记，请点击“我要登记”，如果不登记，您可以直接关闭页面或点击返回。

</p>
<center><input type="checkbox" id="read" name="read" value="yes"  /><span style="color:red">是否已阅读以上注意事项</span></center></br>
<a href="/userLogin/user/servlet?page=homepage"><button  style="background-color: #32CD32;width: 95px;height: 40px;color: #FFFFFF;font-size:15px;margin-left:9cm;margin-top:1cm;cursor:pointer">  返回</button>
<a href="/userLogin/user/servlet?page=family"><button id="family" name="family" style="background-color: #32CD32;width: 95px;height: 40px;color: #FFFFFF;font-size:15px;margin-left:0.5cm;margin-top:1cm;cursor:pointer">  家庭寻亲</button> 
<a href="/userLogin/user/servlet?page=tramp"><button id="tramp" name="tramp" style="background-color: #32CD32;width: 95px;height: 40px;color: #FFFFFF;font-size:15px;margin-left:0.5cm;margin-top:1cm;cursor:pointer">  流浪乞丐</button>






</div>
<img src="../images/under.png" height="200" width=980px>

<script>
    $("#family").click(function(){
    	if($("#read").is(":checked")==false){
    		alert("请先阅读")
    		return false
    	}
    	
    	});
    
    $("#tramp").click(function(){
    	if($("#read").is(":checked")==false){
    		alert("请先阅读")
    		return false
    	}
    	
    	});

</script>

</body>
</html>