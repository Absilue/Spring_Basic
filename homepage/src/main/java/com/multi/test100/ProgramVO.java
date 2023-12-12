package com.multi.test100;

import java.sql.Date;

public class ProgramVO {
	
    private int program_id;
    private int museum_id;
    private String title;
    private String img;
    private String artist;
    private String theme;
    private Date start_day;
    private Date end_day;
    private int price;
    private String tel;
    
	public int getProgram_id() {
		return program_id;
	}
	public void setProgram_id(int program_id) {
		this.program_id = program_id;
	}
	public int getMuseum_id() {
		return museum_id;
	}
	public void setMuseum_id(int museum_id) {
		this.museum_id = museum_id;
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
	public Date getStart_day() {
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
	public Date getEnd_day() {
		return end_day;
	}
	public void setEnd_day(Date end_day) {
		this.end_day = end_day;
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
		return "ProgramVO [program_id=" + program_id + ", museum_id=" + museum_id + ", title=" + title + ", img=" + img
				+ ", artist=" + artist + ", theme=" + theme + ", start_day=" + start_day + ", end_day=" + end_day
				+ ", price=" + price + ", tel=" + tel + "]";
	}
}
