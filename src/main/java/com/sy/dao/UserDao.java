package com.sy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sy.entity.MissingPerson;
import com.sy.entity.Page;
import com.sy.entity.TrampPerson;
import com.sy.entity.User;
import com.sy.entity.UserMessage;
import com.sy.entity.Volunteer;

public interface UserDao {
	
	
	/**
	 * 查找用户名和密码
	 * @param username 登录用户名 
	 * @param password 密码
	 * @return
	 */
	User findByUsername(String username);
	


	
	/**
	 * 注册用户和密码
	 * @param username 用户名
	 * @param password 密码
	 * @return
	 */
	void addUser(User user);
	
	 void addMissingPerson(MissingPerson missingPerson);
	 void addTrampPerson(TrampPerson trampPerson);
	 
	 void changepassword(String username,String newpassword);

		MissingPerson findByMissingPersonId(int id);
		
		TrampPerson findByTrampPersonId(int id);
		
		List<MissingPerson> findMoreMissingPerson();
		
		List<TrampPerson> findMoreTrampPerson();
		
		List<MissingPerson> findByPage(Page page);
		
		List<MissingPerson> findBySex(String sex);
		List<MissingPerson> findByLastName(String LastName);
		List<MissingPerson> findBySexAndLastName(String sex,String LastName);
		
		User findByInformation(String username,String telephonenumber,String email,String likeplace,String likestar,String idcard);
		
		void storemessage(String username,String message);//留言板
		
		List<User> findAllMessage();
		
		//----------统计
		int totalUserInformation();
		int totalMissingPersonInformation();
		int totalTrampInformation();
		int totalMessage();
		int totalUndelMessage();
		
		//-------------
			 void deleteUser(String id);
		
		//---------
			 
			 User findByUserId(String id);
		//---改变用户信息
			 void changeUserInformation(User user);
			 
		  void	 storeVolunteer	 (Volunteer volunteer);

        void changeFamilyInformation(MissingPerson missingPerson);

        void changeTrampInformation(TrampPerson trampPerson);

		List<Volunteer> allVolunteer();
			 
		List<UserMessage> getMessage();
		
		void changeMessage(int messageId,String status);
		
		List<UserMessage> undel();
		
}
