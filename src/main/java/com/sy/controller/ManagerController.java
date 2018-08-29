package com.sy.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sy.entity.MissingPerson;
import com.sy.entity.TrampPerson;
import com.sy.entity.User;
import com.sy.entity.UserMessage;
import com.sy.entity.Volunteer;
import com.sy.service.UserService;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/managerPage")
	public String anotherpage(){
		return "managerPage";
	}
	//------全部账号信息--------------
	@RequestMapping("/allMessage")
	public @ResponseBody JSON allMessage(){ //@ResponseBody 返回不是路径
	List<User> userlist=	userService.allMessage();	
	 JSONArray json = JSONArray.fromObject(userlist);
	// System.out.println(json);
		//model.addAttribute("userlist",userlist);	 
		return json;  
	}
	
	//---------全部志愿者---------------
	@RequestMapping("/volunteer")
	public @ResponseBody JSON volunteer(){ //@ResponseBody 返回不是路径
	List<Volunteer> volunteer=	userService.allVolunteer();	
	 JSONArray json = JSONArray.fromObject(volunteer);
	// System.out.println(json);
		//model.addAttribute("userlist",userlist);	 
		return json;  
	}
	
	//---------删除账号 ---------------
	@RequestMapping("/deleteUserInformation")
	public void deleteUserInformation (HttpServletRequest request){
	String id=	request.getParameter("id");

		userService.deleteUser(id);
	
	}
	
	//---------个人账号信息 ---------------
	@RequestMapping("/aUser")
	public @ResponseBody JSON aUser (HttpServletRequest request){
	String id=	request.getParameter("id");
	User user=userService.aUser(id);
	JSONArray json = JSONArray.fromObject(user);
	
	return json;
	}
	
	//---------改账号信息 ---------------
	@RequestMapping("/changeUser")
	public @ResponseBody void  changeUser(User user){
		String password=user.getPassword();
		userService.changeUserInformation(user);
	
	}
	
	//---------改走失儿童信息---------------
	@RequestMapping("/changeFamily")
	public  @ResponseBody void  changeFamily(MissingPerson missingPerson){
		userService.changeFamilyInformation(missingPerson);
	}
	//--------------改流浪乞丐童信息 ---------------
	@RequestMapping("/changeTramp")
	public  @ResponseBody void  changeTramp(TrampPerson trampPerson){
		userService.changeTrampInformation(trampPerson);
	}
	
	
	//--------------全部走失儿童信息 ---------------
	@RequestMapping("/allMissingPerson")
	public @ResponseBody JSON allMissingPerson(Model model){
		List<MissingPerson> listMissingPerson=userService.MoreMissingPerson();
		 JSONArray oldjson = JSONArray.fromObject(listMissingPerson);//list转json
		 
		 JSONArray newjson=new JSONArray();
		 for(int i=0;i<oldjson.size();i++){
			 JSONObject jsonObject=(JSONObject)oldjson.get(i);
			 JSONObject jsonObject2=jsonObject.discard("file");
			 newjson.add(jsonObject2);		 
		 }

		return newjson; 
	}
	
	//--------------全部流浪乞丐信息 ---------------
	@RequestMapping("/allTrampPerson")
	public  @ResponseBody JSON allTrampPerson(Model model){
		List<TrampPerson> listTrampPerson=userService.MoreTrampPerson();
		JSONArray oldjson=JSONArray.fromObject(listTrampPerson);
		
		JSONArray newjson=new JSONArray();
		for(int i=0;i<oldjson.size();i++){
			JSONObject jsonObject=(JSONObject)oldjson.get(i);
			JSONObject jsonobject2=jsonObject.discard("file");
			newjson.add(jsonobject2);
			
		}
		
		
		return newjson;
	}
	//--------------单个走失儿童信息 ---------------
	@RequestMapping("/missingPersonInformation")
	public @ResponseBody JSON missingPersonInformation(HttpServletRequest request,Model model){
		String aid=request.getParameter("id");
		int id=Integer.parseInt(aid);
		MissingPerson missingPersonInformation=userService.MissingPersonInformation(id);
		JSONArray oldjson=JSONArray.fromObject(missingPersonInformation);
	
		JSONArray newjson=new JSONArray();
		for(int i=0;i<oldjson.size();i++){
			JSONObject jsonObject=(JSONObject)oldjson.get(i);
			JSONObject jsonobject2=jsonObject.discard("file");
			newjson.add(jsonobject2);	
		}
		//System.out.println(newjson);
		return newjson;	
	}
	//--------------单个流浪乞丐信息 ---------------
	@RequestMapping("/trampPersonInformation")
	public @ResponseBody JSON TrampPersonInformation(HttpServletRequest request,Model model){
		String aid=request.getParameter("id");
		int id=Integer.parseInt(aid);
		TrampPerson TrampPersonInformation=userService.TrampPersonInformation(id);
		JSONArray oldjson=JSONArray.fromObject(TrampPersonInformation);
	
		JSONArray newjson=new JSONArray();
		for(int i=0;i<oldjson.size();i++){
			JSONObject jsonObject=(JSONObject)oldjson.get(i);
			JSONObject jsonobject2=jsonObject.discard("file");
			newjson.add(jsonobject2);	
		}
		//System.out.println(newjson);
		return newjson;	
	}
	//-----总数--------------
	@RequestMapping("/total")
	public @ResponseBody JSON total(Model model){ //@ResponseBody 返回不是路径
	JSONArray array=(JSONArray) userService.totalCount();
		return array;  
	}
	//-----------留言信息-----------------
	@RequestMapping("/message")
	public @ResponseBody JSON message(){ //@ResponseBody 返回不是路径
	List<UserMessage> listMessage= userService.message();
	JSONArray json=JSONArray.fromObject(listMessage);
	//System.out.println(json);
		return json;   
	}
	//-----------------处理留言信息--------------
	@RequestMapping("/delMessage")
	public @ResponseBody void delMessage(UserMessage userMessage){
		int messageId=userMessage.getMessageId();
		String status=userMessage.getStatus();
		userService.changeMessage(messageId,status);
	}
	//-----------------查看未处理的留言信息--------------
	@RequestMapping("/undelMessage")
	public @ResponseBody JSON undelMessage(){
		List<UserMessage> listMessage=userService.undelMessage();
		JSONArray json=JSONArray.fromObject(listMessage);
		return json;
		
	}
	
}
