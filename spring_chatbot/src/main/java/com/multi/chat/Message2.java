package com.multi.chat;

import java.util.Date;

//브라우저에서 채팅창에 넣은 데이터를 서버에서 받을 때 사용할 vo
public class Message2 {

		private String from;
		private String text;
		private String date;
		private String menu;
		
		public void setMenu(String menu) {
			this.menu = menu;
		}
		
		public String getMenu() {
			return menu;
		}
		
		public void setDate(String date) {
			this.date = date;
		}
		
		public String getDate() {
			return date;
		}
		
		public String getFrom() {
			return from;
		}
		public void setFrom(String from) {
			this.from = from;
		}
		public String getText() {
			return text;
		}
		public void setText(String text) {
			this.text = text;
		}


}
