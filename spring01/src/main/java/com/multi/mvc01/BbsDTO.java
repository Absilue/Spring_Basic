package com.multi.mvc01;

public class BbsDTO {
	private int id;
	private String title;
	private String content;
	private String writer;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
		return "BbsDTO [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer + "]";
	}

	// getter/setter
	// toString
	//ctrl + shift + f : 코드 자동 정리
}
