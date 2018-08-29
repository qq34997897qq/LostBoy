package com.sy.service.Impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sy.dao.MissingPersonDao;
import com.sy.dao.UserDao;
import com.sy.entity.MissingPerson;
import com.sy.entity.Page;
import com.sy.entity.TrampPerson;
import com.sy.entity.User;
import com.sy.entity.UserMessage;
import com.sy.entity.Volunteer;
import com.sy.service.UserService;

import net.sf.json.JSON;
import net.sf.json.JSONArray;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	private MissingPersonDao missingPersonDao;
	/* 
	 * 检验用户登录业务
	 * 
	 */
	
	//-----------检查登录--------------
	public User checkLogin(String username, String password) {
		
		User user = userDao.findByUsername(username);
		if(user != null && user.getPassword().equals(password)){
		
			return user;
		}
		return null;
	}
	
	//-----------检查注册--------------
	@Override
	public User checkRegister(String username) {
	
		User user = userDao.findByUsername(username);
		if(user !=null){//如果有该用户
			return user;
		}
		return null;
	}

	//-----------注册--------------
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}

	//-----------家庭寻子信息录入--------------
	@Override
	public void MissingPersonLogin(MissingPerson missingPerson) {
		// TODO Auto-generated method stub
		//missingPersonDao.addMissingPerson(missingPerson);
		userDao.addMissingPerson(missingPerson);
	}
	
	//-----------流浪乞丐信息录入--------------
	@Override
	public void TrampPersonLogin(TrampPerson trampperson) {
		// TODO Auto-generated method stub
		//missingPersonDao.addMissingPerson(missingPerson);
		userDao.addTrampPerson(trampperson);
	}

	//-----------单个家庭寻子信息-------------
	@Override
	public MissingPerson MissingPersonInformation(int id) {
	MissingPerson	missingPerson=userDao.findByMissingPersonId(id);
	//	MissingPerson	missingPerson=missingPersonDao.findByMissingPersonId(id);
		return missingPerson;
	}
	
	//-----------单个流浪乞丐信息-------------
	@Override
	public TrampPerson TrampPersonInformation(int id) {
		TrampPerson	trampPerson=userDao.findByTrampPersonId(id);
		return trampPerson;
	}

	//-----------全部家庭寻子信息-------------
	@Override
	public List<MissingPerson> MoreMissingPerson() {
		
		return userDao.findMoreMissingPerson();
	}
	//-----------全部流浪乞丐信息-------------
	public List<TrampPerson> MoreTrampPerson() {
		
		return userDao.findMoreTrampPerson();
	}

	//-----------------分页----------
	@Override
	public List<MissingPerson> findByPage(Page page) {
		// TODO Auto-generated method stub
		return userDao.findByPage(page);
	}

	//-----------性别筛选-------------
	@Override
	public List<MissingPerson> findBySex(String sex) {
		// TODO Auto-generated method stub
		return userDao.findBySex(sex);
	}

	//-----------名字筛选-------------
	@Override
	public List<MissingPerson> findByLastName(String LastName) {
		// TODO Auto-generated method stub
		return userDao.findByLastName(LastName);
	}

	//-----------性别名字筛选-------------
	@Override
	public List<MissingPerson> findBySexAndLastName(String sex, String LastName) {
		// TODO Auto-generated method stub
		return userDao.findBySexAndLastName(sex,LastName);
	}

	//-----------改变密码-------------
	@Override
	public void changePassword(String username, String newpassword) {
		userDao.changepassword(username,newpassword);
		
	}

	//-----------忘记密码-------------
	@Override
	public String forgetPassword(String username, String telephonenumber, String email, String likeplace,String likestar,String idcard) {
		
	 User user=userDao.findByInformation(username,telephonenumber,email,likeplace,likestar,idcard);
		if(user!=null){
			return "true";
		}
		return "false";
	}

	//-----------留言板-------------
	@Override
	public void storeMessage(String username,String message) {
		userDao.storemessage(username,message);
		
	}

	//-----------全部个人信息-------------
	@Override
	public List<User> allMessage() {
		
		return userDao.findAllMessage();
	}

	//-----------信息统计-------------
	@Override
	public JSON totalCount() {
		
		Map map=new HashMap();
		map.put("totalUser", userDao.totalUserInformation());
		map.put("totalMissinPerson", userDao.totalMissingPersonInformation());
		map.put("totalTrampPerson", userDao.totalTrampInformation());
		map.put("totalMessage", userDao.totalMessage());
		map.put("totalUndelMessage",userDao.totalUndelMessage());
		JSONArray jsonArray=JSONArray.fromObject(map);
		System.out.println(jsonArray);
		return jsonArray;
		
	}


	//-----------删除用户-------------
	@Override
	public void deleteUser(String id) {
		userDao.deleteUser(id);
		
	}
	//-----------个人用户信息-------------

	@Override
	public User aUser(String id) {
		User user=userDao.findByUserId(id);
		return user;
	}

	//-----------更改个人信息-------------
	@Override
	public void changeUserInformation(User user) {//改变账号信息
		 userDao.changeUserInformation(user);
		
	}

	//-----------报名志愿者-------------
	@Override
	public void volunteer(Volunteer volunteer) {
		userDao.storeVolunteer(volunteer);
	}

	//-----------全部志愿者信息-------------
	@Override
	public List<Volunteer> allVolunteer() {
		
		return userDao.allVolunteer();
	}

	//-----------改变家庭寻子信息------------
	@Override
	public void changeFamilyInformation(MissingPerson missingPerson) {
		
		userDao.changeFamilyInformation(missingPerson);
		
		//-----------改变流浪乞丐信息-------------
	}
	public void changeTrampInformation(TrampPerson trampPerson) {
		
		userDao.changeTrampInformation(trampPerson);
	}

	//-----------留言信息-------------
	@Override
	public List<UserMessage> message() {
		
		return userDao.getMessage();
	}

	//-----------更改留言信息状态-------------
	@Override
	public void changeMessage(int messageId, String status) {
		userDao.changeMessage(messageId,status);
		
	}

	//-----------查看未处理的留言信息-------------
	@Override
	public List<UserMessage> undelMessage() {
		
		return userDao.undel();
	} 

 


	
}
