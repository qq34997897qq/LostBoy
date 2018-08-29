package com.sy.service;


import java.util.List;

import com.sy.entity.MissingPerson;
import com.sy.entity.Page;
import com.sy.entity.TrampPerson;
import com.sy.entity.User;
import com.sy.entity.UserMessage;
import com.sy.entity.Volunteer;

import net.sf.json.JSON;

//Service层接口
public interface UserService {
	
	//-------------检验用户登录
	User checkLogin(String username,String password);
	
	
   //-------------注册--------------
	User checkRegister(String username);
	
	//----------注册用户-------
	void register(User user);
	
	//------------忘记密码--------
	String forgetPassword(String username,String telephonenumber,String email,String likeplace,String likestar,String idcard);
	
	//------改变密码--------
	void changePassword(String username,String newpassword);
	
	//------个人用户------
	User aUser(String id);
	
	//---改变用户信息-------
	void changeUserInformation(User user);
	
	//------改变家庭寻子信息--------
	void changeFamilyInformation(MissingPerson missingPerson);
	
	//------改变流浪乞丐信息---------
	void changeTrampInformation(TrampPerson trampPerson);
	
	//-------------删除账号---------
	void deleteUser(String id);
	
	//-------------志愿者录入----------
	void volunteer(Volunteer volunteer);
	
	
	//---------走失信息录入---------------
	void MissingPersonLogin(MissingPerson missingPerson);
	
	//-------------流浪信息录入----------------
	void TrampPersonLogin(TrampPerson trampPerson);
	

	
	MissingPerson MissingPersonInformation(int id);//根据走失人id
	
	TrampPerson TrampPersonInformation(int id);//根据流浪者id
	
	List<MissingPerson> MoreMissingPerson(); //全部走失儿童信息
	
	List<TrampPerson> MoreTrampPerson();//全部流浪乞丐信息
	
	List<Volunteer> allVolunteer();
	
	//---------------特定搜索
	List<MissingPerson> findBySex(String sex);
	List<MissingPerson> findByLastName(String LastName);
	List<MissingPerson> findBySexAndLastName(String sex,String LastName);
	//----------
	
	List<MissingPerson> findByPage(Page page);
	
	void storeMessage(String username,String message);
	
	List<User> allMessage(); 
	
	JSON totalCount();
	
	List<UserMessage> message();
	
	void changeMessage(int messageId,String status);
	
	List<UserMessage> undelMessage();
}
