package com.multi.mvc3;

public class ChartDTO {

	private int id;
	private String doing;
	private int time;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDoing() {
		return doing;
	}
	public void setDoing(String doing) {
		this.doing = doing;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	
	@Override
	public String toString() {
		return "ChartDTO [id=" + id + ", doing=" + doing + ", time=" + time + "]";
	}
}
