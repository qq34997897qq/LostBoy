package com.sy.entity;

public class User {
	
	
	private String userId;
	
	private String username;
	
	private String password;
	
	private String telephonenumber;
	
	private String email;
	
	private String likeplace;
	
	private String likestar;
	
	private String idcard;
	
	
	

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTelephonenumber() {
		return telephonenumber;
	}

	public void setTelephonenumber(String telephonenumber) {
		this.telephonenumber = telephonenumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getLikeplace(){
		return likeplace;
	}
	public void setLikeplace(String likeplace){
	this.likeplace=likeplace;
	}
	
	public String getLikestar(){
		return likestar;
	}
	public void setLikestar(String likestar){
		this.likestar=likestar;
		
	}
	public String getIdcard(){
		return idcard;
	}
	public void setIdcard(String idcard){
		this.idcard=idcard;
		
	}
	
	
}
