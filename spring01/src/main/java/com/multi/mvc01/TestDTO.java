package com.multi.mvc01;

public class TestDTO {
	private int id;
	private String oriid;
	private String content;
	private String writer;

	public int getId() {
		return id;
	}

	public void setId(int id) { //setId("100")
		this.id = id;
	}

	public String getOriid() {
		return oriid;
	}

	public void setOriid(String oriid) { 
		this.oriid = oriid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "TestDTO [id=" + id + ", oriid=" + oriid + ", content=" + content + ", writer=" + writer + "]";
	}
	
	
	

}
