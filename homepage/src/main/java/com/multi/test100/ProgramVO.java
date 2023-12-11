package com.multi.test100;

import java.sql.Date;

public class ProgramVO {
    private int programId;
    private String title;
    private String img;
    private String artist;
    private String theme;
    private Date startDay;
    private Date endDay;
    private int price;
    private String tel;
	public int getProgramId() {
		return programId;
	}
	public void setProgramId(int programId) {
		this.programId = programId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public Date getStartDay() {
		return startDay;
	}
	public void setStartDay(Date startDay) {
		this.startDay = startDay;
	}
	public Date getEndDay() {
		return endDay;
	}
	public void setEndDay(Date endDay) {
		this.endDay = endDay;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Override
	public String toString() {
		return "ProgramVO [programId=" + programId + ", title=" + title + ", img=" + img + ", artist=" + artist
				+ ", theme=" + theme + ", startDay=" + startDay + ", endDay=" + endDay + ", price=" + price + ", tel="
				+ tel + "]";
	}
}
