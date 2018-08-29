package com.sy.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sy.entity.MissingPerson;
import com.sy.entity.Page;
import com.sy.entity.TrampPerson;
import com.sy.entity.User;
import com.sy.entity.Volunteer;
import com.sy.service.MissingPersonService;
import com.sy.service.UserService;

@Controller
@RequestMapping("/user")

//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
@SessionAttributes("user")

public class UserController {
	
	@Autowired
	private UserService userService;
	private MissingPersonService missingPersonService;

//--------登录界面----------------
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/register")
	public String register(){
		return "register";
	}
	@RequestMapping("/forgetPassword")
	public String forgetPassowrd(){
		return "forgetPassword";
	}
	@RequestMapping("/changepassword")
	public String change(){
		return "changepassword";
		}
//--------登录界面----------------	
	
		//正常访问MissingPersonPage页面
		@RequestMapping("/message")
		public String message(){
			return "message";
		}
		//正常访问第二页面
		@RequestMapping("/family")
		public String family(){
			return "family";
		}
		@RequestMapping("/tramp")
		public String tramp(){
			return "tramp";
		}
	

		//正常访问MissingPersonPage页面
		@RequestMapping("/MissingPersonPage")
		public String MissingPersonPage(){
			return "MissingPersonPage";
		}
	
	@RequestMapping("/servlet")//页面跳转
	public String pageSkip(HttpServletRequest request){
		String page=request.getParameter("page");
		if(page.equals("homepage")){
			return "homePage";
		}else if(page.equals("second")){
			return "second";
		}else if(page.equals("third")){
			return "third";
		}else if(page.equals("fourth")){
			return "fourth";
		}else if(page.equals("message")){
			return "message";
		}else if(page.equals("family")){
			return "family";
		}else if(page.equals("tramp")){
			return "tramp";
		}	
		return "homePage";
	}
	
	
	//------------------用户登录----------------
	@RequestMapping("/checkLogin")
	public String checkLogin(User user,Model model){
	
		user = userService.checkLogin(user.getUsername(), user.getPassword());
		if(user != null){

			
			if(user.getUsername().equals("qq34997897qq")){
				
				return  "managerPage";
				
			}
		   model.addAttribute("user",user);
			return "homePage";
		
		}else{
				model.addAttribute("result","用户名或密码错误");
				return "login";
		}
		
	}
//--------------------------------------------------	
	
	//----------------------------用户注册----------------
	@RequestMapping("/checkRegister")    
	public String checkRegister(User user,Model model ){
		 String username=user.getUsername();
	//	System.out.println(user.getPassword());
		if(userService.checkRegister(username) ==null){//如果没有该用户
		
			userService.register(user);
			model.addAttribute("result","恭喜你！注册账号成功");
			return "register";
		}
		model.addAttribute("result","对不起用户名已经存在");
		    return"register";
	}
	//-------------------------修改密码-----------------
	@RequestMapping("/changethepassword")
	public String changePassword(HttpServletRequest request ,Model model){
	String	username=request.getParameter("username");
	String	oldpassword=request.getParameter("oldpassword");
	String  newpassword=request.getParameter("newpassword");
	
	User	user=userService.checkLogin(username, oldpassword);
		if(user!=null){//密码正确
		userService.changePassword(username,newpassword);
		model.addAttribute("result","修改密码成功");
		}
		else{
			model.addAttribute("result","用户名或密码错误");
		}
		return "changepassword";
		
	}
	//-------------------------忘记密码--------------------------
	@RequestMapping("/forgetthepassword")
	public String  forgetPassword(HttpServletRequest request,Model model){
		String username=request.getParameter("username");
		String telephonenumber=request.getParameter("telephonenumber");
		String email=request.getParameter("email");
		String likeplace=request.getParameter("likeplace");
		String likestar=request.getParameter("likestar");
		String idcard=request.getParameter("idcard");
		
		String newpassword=request.getParameter("newpassword");
		System.out.println(likestar);
	
		if(userService.forgetPassword(username, telephonenumber, email, likeplace, likestar,idcard)=="true"){
			userService.changePassword(username, newpassword);
			model.addAttribute("result","修改密码成功,请牢记密码");
			return "forgetPassword";
		}
		else{
			model.addAttribute("result","对不起信息不正确");
			return "forgetPassword";
		}
		
		
		
	}
	//-------------------------------------
	
	//-----------------------乱搞的
/*	@RequestMapping("/MissingPersonInformation2")   
	public String MissingPersonInformation2(HttpServletRequest request,HttpServletResponse response,Model model){
			String astart=request.getParameter("start");
			System.out.println(astart);
		int a=Integer.parseInt(astart);
		Page page=new Page();
		page.setStart(a);
		page.setCount(2);
		List<MissingPerson>listMissingPerson=   userService.findByPage(page);
	//------------------展示所有走失人信息---------
	
	//List<MissingPerson>listMissingPerson=   userService.MoreMissingPerson();

	model.addAttribute("listMissingPerson",listMissingPerson);
//	map.addAttribute("moreMissingPerson",listMissingPerson);
	 for(MissingPerson attribute : listMissingPerson) {
		//  model.addAttribute("result",attribute.getMissingPersonPic());
		 
		}
		return "MoreMissingPerson";
	
	}*/
	// -------------------------------添加走失人信息---------------------
		@RequestMapping("/checkMissingPerson")    
		public String checkMissingPerson(MissingPerson missingPerson ,Model model,HttpServletRequest request){
		
			User user =   (User) request.getSession().getAttribute("user");
			String username=user.getUsername();
			missingPerson.setUsername(username);

			 
		      String sqlPath = null;   //保存数据库的路径  
		     
		      String localPath="D:\\File\\images\\";   //定义文件保存的本地路径  
		 
		      String filename=null;    //定义 文件名   
		      if(!missingPerson.getFile().isEmpty()){    
		    	  
		          String uuid = UUID.randomUUID().toString().replaceAll("-","");     //生成uuid作为文件名称    		      
		          String contentType=missingPerson.getFile().getContentType();    //获得文件类型（可以判断如果不是图片，禁止上传）     
		          String suffixName=contentType.substring(contentType.indexOf("/")+1);     //获得文件后缀名      
		          filename=uuid+"."+suffixName;     //得到 文件名   
		          //文件保存路径  
		          try {
					missingPerson.getFile().transferTo(new File(localPath+filename));
				} catch (IllegalStateException e) {	
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}    
		      }  
		      //把图片的相对路径保存至数据库  
		      sqlPath = "/images/"+filename;   
		      missingPerson.setMissingPersonPic(sqlPath);
		     userService.MissingPersonLogin(missingPerson);
		     model.addAttribute("result","添加信息成功");
				return "family";

		 
		}
	
	
	

	//-----------------------------走失人信息显示---------------
	@RequestMapping("/MissingPersonInformation")   

	public String MissingPersonInformation(HttpServletRequest request,HttpServletResponse response,Model model){
	String aid= request.getParameter("id");
	int id=Integer.parseInt(aid);
	//------------------------展示所有走失人信息---------
	if(id==0){
	List<MissingPerson>listMissingPerson=   userService.MoreMissingPerson();
	model.addAttribute("listMissingPerson",listMissingPerson);
		return "MoreMissingPerson";
	}
	
	
	//----1-10
	MissingPerson missingPerson=userService.MissingPersonInformation(id);
	model.addAttribute("MissingPerson",missingPerson);
	return "MissingPersonPage";

	}
	//-----------------------------模糊查询--------------------
		@RequestMapping("/specialMissingPerson")
		public String specialMissingPerson(HttpServletRequest request ,Model model){
			String sex=request.getParameter("sex");
			String LastName=request.getParameter("LastName");
		
			if(!sex.equals("null")&&!LastName.equals("")){
			List<MissingPerson> listMissingPerson	=userService.findBySexAndLastName(sex, LastName);
			if(listMissingPerson.isEmpty()){
				model.addAttribute("searchResult","抱歉，没有符合的信息");
				return "MoreMissingPerson";
			}
				model.addAttribute("listMissingPerson",listMissingPerson);		
				return "MoreMissingPerson";
			}else if(sex.equals("null")&&!LastName.equals("")){
				List<MissingPerson> listMissingPerson	=userService.findByLastName(LastName);
				if(listMissingPerson.isEmpty()){
					model.addAttribute("searchResult","抱歉，没有符合的信息");
					return "MoreMissingPerson";
				}
				model.addAttribute("listMissingPerson",listMissingPerson);
				return "MoreMissingPerson";
			}
			else if(!sex.equals("null")&&LastName.equals("")){
				List<MissingPerson> listMissingPerson	=userService.findBySex(sex);
				if(listMissingPerson.isEmpty()){
					model.addAttribute("searchResult","抱歉，没有符合的信息");
					return "MoreMissingPerson";
				}
				model.addAttribute("listMissingPerson",listMissingPerson);
				return "MoreMissingPerson";			
			}
			else {
				model.addAttribute("searchResult","抱歉，没有符合信息");
				return "MoreMissingPerson";
			}

		}
		
		
		// -------------------------------添加流浪者信息---------------------
		@RequestMapping("/checkTrampPerson")    
		public String checkTrampPerson(TrampPerson trampPerson ,Model model,HttpServletRequest request){
		
			User user =   (User) request.getSession().getAttribute("user");
			String username=user.getUsername();
			trampPerson.setUsername(username);

			 
		      String sqlPath = null;   //保存数据库的路径  
		     
		      String localPath="E:\\File\\images\\";   //定义文件保存的本地路径  
		 
		      String filename=null;    //定义 文件名   
		      if(!trampPerson.getFile().isEmpty()){    
		    	  
		          String uuid = UUID.randomUUID().toString().replaceAll("-","");     //生成uuid作为文件名称    		      
		          String contentType=trampPerson.getFile().getContentType();    //获得文件类型（可以判断如果不是图片，禁止上传）     
		          String suffixName=contentType.substring(contentType.indexOf("/")+1);     //获得文件后缀名      
		          filename=uuid+"."+suffixName;     //得到 文件名   
		          //文件保存路径  
		          try {
		        	  trampPerson.getFile().transferTo(new File(localPath+filename));
				} catch (IllegalStateException e) {	
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}    
		      }  
		      //把图片的相对路径保存至数据库  
		      sqlPath = "/images/"+filename;   
		      trampPerson.setTrampPersonPic(sqlPath);
		     userService.TrampPersonLogin(trampPerson);
		     model.addAttribute("result","添加信息成功");
				return "tramp";

		
		}		
		
		//-----------------------------走失人信息显示---------------
		@RequestMapping("/TrampPersonInformation")   

		public String TrampPersonInformation(HttpServletRequest request,HttpServletResponse response,Model model){
		String aid= request.getParameter("id");
		int id=Integer.parseInt(aid);
		//------------------------展示所有走失人信息---------
		if(id==0){
		List<TrampPerson>listTrampPerson=   userService.MoreTrampPerson();
		model.addAttribute("listTrampPerson",listTrampPerson);
			return "MoreTrampPerson";
		}
		
		
		//----1-10
		TrampPerson trampPerson=userService.TrampPersonInformation(id);
		model.addAttribute("TrampPerson",trampPerson);
		return "TrampPersonPage";

		}
		
		
		
		
		
		
		
		
		
//--------------------留言板-------------------------
	@RequestMapping("/storemessage")
	public String storeMessage(HttpServletRequest request ,Model model){
		String message =request.getParameter("message");
		User user =   (User) request.getSession().getAttribute("user");
		String username=user.getUsername();
		userService.storeMessage(username,message);
		model.addAttribute("result", "留言成功");
		return "message";
	}
	@RequestMapping("/volunteer")
	public String volunteer(Volunteer volunteer ,HttpServletRequest request,Model model){
		
		User user =   (User) request.getSession().getAttribute("user");
		String username=user.getUsername();
		volunteer.setUsername(username);
		userService.volunteer(volunteer);
		model.addAttribute("result", "报名志愿者成功");
		return "fourth";
	}
	

//---------------------------------
	//测试超链接跳转到另一个页面是否可以取到session值
	@RequestMapping("/anotherpage")
	public String hrefpage(){
		
		return "anotherpage";
	}
	
	//注销方法
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session){
		//通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "login";
	}
}
