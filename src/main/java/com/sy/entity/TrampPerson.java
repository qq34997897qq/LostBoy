package com.sy.entity;

import org.springframework.web.multipart.MultipartFile;

public class TrampPerson {
	
	private String username; 
	
	private int    TrampPersonId;
	
	private String TrampPersonPic;
	
	private MultipartFile file;  
	
private String TrampPersonName;

private String TrampPersonHigh;

private String TrampPersonSex ;

private String TrampPersonPlace ;

private String TrampPersonFeature ;

private String other;

private String ContactsName  ;

private String telephonenumber  ;

private String email ;





public int getTrampPersonId() {
	return TrampPersonId;
}

public void setTrampPersonId(int TrampPersonId) {
	this.TrampPersonId = TrampPersonId;
}




public String getTrampPersonPic() {
	return TrampPersonPic;
}

public void setTrampPersonPic(String TrampPersonPic) {
	this.TrampPersonPic = TrampPersonPic;
}

public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
	this.file = file;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}



public String getTrampPersonPlace() {
	return TrampPersonPlace;
}

public void setTrampPersonPlace(String TrampPersonPlace) {
	this.TrampPersonPlace = TrampPersonPlace;
}

public String getTrampPersonFeature() {
	return TrampPersonFeature;
}

public void setTrampPersonFeature(String TrampPersonFeature) {
	this.TrampPersonFeature = TrampPersonFeature;
}

public String getTrampPersonName() {
	return TrampPersonName;
}

public void setTrampPersonName(String TrampPersonName) {
	this.TrampPersonName = TrampPersonName;
}
public String getTrampPersonHigh() {
	return TrampPersonHigh;
}

public void setTrampPersonHigh(String TrampPersonHigh) {
	this.TrampPersonHigh = TrampPersonHigh;
}
public String getTrampPersonSex() {
	return TrampPersonSex;
}

public void setTrampPersonSex(String TrampPersonSex) {
	this.TrampPersonSex = TrampPersonSex;
}

public String getContactsName() {
	return ContactsName;
}

public void setContactsName(String ContactsName) {
	this.ContactsName = ContactsName;
}
public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getOther() {
	return other;
}

public void setOther(String other) {
	this.other = other;
}

public String getTelephonenumber() {
	return telephonenumber;
}
 
public void setTelephonenumber(String telephonenumber) {
	this.telephonenumber = telephonenumber;
}

}
