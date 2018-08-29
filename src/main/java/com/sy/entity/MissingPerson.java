package com.sy.entity;

import org.springframework.web.multipart.MultipartFile;

public class MissingPerson {

	private String MissingPersonPic;  
	private MultipartFile file;  
	private int    MissingPersonId;
	private String MissingPersonName;
	private String MissingPersonHigh;
	private String MissingPersonSex;
	private String MissingDate;
	private String MissingPersonForm;
	private String MissingPersonPlace;
	private String MissingPersonFeature;
	private String MissingHappend;
	private String other;
	//联系人
	private String ContactsName;
	private String relationship;
	private String telephonenumber;
	private String email;
	private String address;
	private String username;
	public MissingPerson(){
		
	}
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getMissingPersonPic() {
		return MissingPersonPic;
	}

	public void setMissingPersonPic(String MissingPersonPic) {
		this.MissingPersonPic = MissingPersonPic;
	}
	 
	
	public int getMissingPersonId() {
		return MissingPersonId;
	}

	public void setMissingPersonId(int MissingPersonId) {
		this.MissingPersonId = MissingPersonId;
	}
	
	public String getMissingPersonName() {
		return MissingPersonName;
	}

	public void setMissingPersonName(String MissingPersonName) {
		this.MissingPersonName = MissingPersonName;
	}
	public String getMissingPersonHigh() {
		return MissingPersonHigh;
	}

	public void setMissingPersonHigh(String MissingPersonHigh) {
		this.MissingPersonHigh = MissingPersonHigh;
	}
	public String getMissingPersonSex() {
		return MissingPersonSex;
	}

	public void setMissingPersonSex(String MissingPersonSex) {
		this.MissingPersonSex = MissingPersonSex;
	}
	public String getMissingDate() {
		return MissingDate;
	}

	public void setMissingDate(String MissingDate) {
		this.MissingDate = MissingDate;
	}
	public String getMissingPersonForm() {
		return MissingPersonForm;
	}

	public void setMissingPersonForm(String MissingPersonForm) {
		this.MissingPersonForm = MissingPersonForm;
	}
	public String getMissingPersonPlace() {
		return MissingPersonPlace;
	}

	public void setMissingPersonPlace(String MissingPersonPlace) {
		this.MissingPersonPlace = MissingPersonPlace;
	}
	public String getMissingPersonFeature() {
		return MissingPersonFeature;
	}

	public void setMissingPersonFeature(String MissingPersonFeature) {
		this.MissingPersonFeature = MissingPersonFeature;
	}
	public String getMissingHappend() {
		return MissingHappend;
	}

	public void setMissingHappend(String MissingHappend) {
		this.MissingHappend = MissingHappend;
	}
	


	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}
	
	public String getContactsName() {
		return ContactsName;
	}

	public void setContactsName(String ContactsName) {
		this.ContactsName = ContactsName;
	}
	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String gettelephonenumber() {
		return telephonenumber;
	}

	public void settelephonenumber(String telephonenumber) {
		this.telephonenumber = telephonenumber;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
}
