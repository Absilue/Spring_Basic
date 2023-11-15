package com.multi.mvc3;

public class ComputerVO {
	private String com;
	private String price;
	private String mouse;
	private String price2;
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getMouse() {
		return mouse;
	}
	public void setMouse(String mouse) {
		this.mouse = mouse;
	}
	public String getPrice2() {
		return price2;
	}
	public void setPrice2(String price2) {
		this.price2 = price2;
	}
	
	@Override
	public String toString() {
		return "ComputerVO [com=" + com + ", price=" + price + ", mouse=" + mouse + ", price2=" + price2 + "]";
	}
}