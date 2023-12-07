package com.multi.mongo;

import java.util.Date;

public class MemoVO {
	
	private String _id;
	private String name;
	private String content;
	private String weather;
	private Date date;

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWeather() {
		return weather;
	}

	public void setWeather(String weather) {
		this.weather = weather;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "MemoVO [_id=" + _id + ", name=" + name + ", content=" + content + ", weather=" + weather + ", date="
				+ date + "]";
	}

}
