package com.multi.test100;

public class PageVO2 {
	
	private int start;
	private int end;
	private int page;
	
	public void setStartEnd() {
		start = 1 + (page -1) * 20;
	//			1 + (1 - 1) * 5 = 1
	//			1 + (2 - 1) * 5 = 6
	//			1 + (3 - 1) * 5 = 11
		end = page * 20;
	//        1 * 5 = 5
	//		  2 * 5 = 10
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	@Override
	public String toString() {
		return "PageVO [start=" + start + ", end=" + end + ", page=" + page + "]";
	}

	
}
