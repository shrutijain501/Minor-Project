package com.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Offer {
	private int ofid;
	private String product;
	private String offer_discount;
	private Date start_date;
	private Date end_date;
	private byte[] photo;
	private String fileName;
	private int OwnerId;
	private String Scategory;
	
	
	public String getScategory() {
		return Scategory;
	}
	public void setScategory(String scategory) {
		Scategory = scategory;
	}
	public int getOwnerId() {
		return OwnerId;
	}
	public void setOwnerId(int ownerId) {
		OwnerId = ownerId;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getOfid() {
		return ofid;
	}
	public void setOfid(int ofid) {
		this.ofid = ofid;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getOffer_discount() {
		return offer_discount;
	}
	public void setOffer_discount(String offer_discount) {
		this.offer_discount = offer_discount;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	
}
