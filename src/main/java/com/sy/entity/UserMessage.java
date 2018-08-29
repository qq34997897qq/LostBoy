package com.sy.entity;

public class UserMessage {
	private int messageId;
	private String username;
	private String message;
	private String status;
	
	public int getMessageId(){
		return  messageId;
	}
	public void setMessageId(int messageId ){
		this.messageId=messageId;
	}
	public String getUsername(){
		return  username;
	}
	public void setUsername(String username ){
		this.username=username;
	}
	public String getMessage(){
		return  message;
	}
	public void setMessage(String message ){
		this.message=message;
	}
	public String getStatus(){
		return  status;
	}
	public void setStatus(String status ){
		this.status=status;
	}
}
