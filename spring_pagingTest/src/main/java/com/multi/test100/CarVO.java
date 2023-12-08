package com.multi.test100;

public class CarVO {
	private int row_no;
	private int id;
	private String email;
	private String car;

	public int getRow_no() {
		return row_no;
	}

	public void setRow_no(int row_no) {
		this.row_no = row_no;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCar() {
		return car;
	}

	public void setCar(String car) {
		this.car = car;
	}

	@Override
	public String toString() {
		return "CarVO [row_no=" + row_no + ", id=" + id + ", email=" + email + ", car=" + car + "]";
	}

}
