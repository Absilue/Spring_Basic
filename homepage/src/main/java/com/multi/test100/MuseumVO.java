package com.multi.test100;

import java.sql.Time;
import java.util.Date;

public class MuseumVO {

    private int museum_Id;
    private String name;
    private String location;
    private String img;
    private Time time_open;
    private Time time_close;
    private String closure;
    private String tel;
    
	public int getMuseum_Id() {
		return museum_Id;
	}
	public void setMuseum_Id(int museum_Id) {
		this.museum_Id = museum_Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Time getTime_open() {
		return time_open;
	}
	public void setTime_open(Time time_open) {
		this.time_open = time_open;
	}
	public Time getTime_close() {
		return time_close;
	}
	public void setTime_close(Time time_close) {
		this.time_close = time_close;
	}
	public String getClosure() {
		return closure;
	}
	public void setClosure(String closure) {
		this.closure = closure;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "MuseumVO [museum_Id=" + museum_Id + ", name=" + name + ", location=" + location + ", img=" + img
				+ ", time_open=" + time_open + ", time_close=" + time_close + ", closure=" + closure + ", tel=" + tel
				+ "]";
	}
}