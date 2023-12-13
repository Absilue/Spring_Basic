package com.multi.chat;

import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {

	@MessageMapping("/chat")
	@SendTo("/topic/messages") //채팅방이름 messages
	public Message send(Message message) {
		//from, text만 messages채팅방에 가입한 브라우저로 그대로 보내고 싶은 경우 
		Date date = new Date();
		message.setDate(date.getHours() + "시 " + date.getMinutes() + "분");
		return message; 
		//return에 뒤에 있는vo가 가입한 브라우저에 도착
	}
	
	@MessageMapping("/chat2")
	@SendTo("/topic/messages2") //채팅방이름 messages2
	public Message2 send2(Message2 message) {
		//from, text만 messages채팅방에 가입한 브라우저로 그대로 보내고 싶은 경우 
		String menu = "";
		
		switch (message.getText()) { //1
		case "0":
			menu = "ChatBOT >>  1)내 포인트 	2)결제 및 취소";
			break;
		case "1":
			menu = "ChatBOT >>  10) 포인트 충전		11) 포인트 환급			12) 포인트 조회";
			break;
		case "2":
			menu = "ChatBOT >>  20) 결제내역 확인	21) 결제 취소 요청		22) 환불 문의";
			break;
		case "20":
		    menu = "ChatBOT >> 내 결제 내역 " +
		            "상품명 : 켈로그 결제 금액 : 30000원 <br>" +
		            "0) 다시 처음 메뉴";
			break;
		case "21":
		    menu = "ChatBOT >> 결제 취소요청을 할 제품을 선택해주세요 <br>" +
		             	"210) 상품명 : 켈로그 결제 금액 : 30000원";
			break;
		case "210":
			menu = "ChatBOT >> 취소요청이 접수되었습니다 0) 다시 처음 메뉴";
			break;
		case "10":
			menu = "ChatBOT >>  100) 10000원 충전	    200) 50000원 충전<br>			300) 100000원 충전";
			break;
		case "100":
			menu = "ChatBOT >>  10000원이 충전되었습니다	0) 다시 처음 메뉴";
			break;
		case "200":
			menu = "ChatBOT >>  50000원이 충전되었습니다	0) 다시 처음 메뉴";
			break;
		case "300":
			menu = "ChatBOT >>  100000원이 충전되었습니다	0) 다시 처음 메뉴";
			break;
		case "11":
			menu = "ChatBOT >>  110) 10000원 환급	111) 50000원 환급<br>			112) 100000원 환급	";
			break;
		case "110":
			menu = "ChatBOT >>  10000원이 환급되었습니다	0) 다시 처음 메뉴";
			break;
		case "111":
			menu = "ChatBOT >>  50000원이 환급되었습니다	0) 다시 처음 메뉴";
			break;
		case "112":
			menu = "ChatBOT >>  100000원이 환급되었습니다	0) 다시 처음 메뉴";
			break;
		default:
			menu = "ChatBOT >> 선택한 번호는 없는 메뉴입니다. 다시 입력해주세요.";
			break;
		}
		message.setMenu(menu);
		return message; 
		//return에 뒤에 있는vo가 가입한 브라우저에 도착
	}
}
