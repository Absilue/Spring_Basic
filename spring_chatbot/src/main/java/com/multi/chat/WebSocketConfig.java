package com.multi.chat;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer{

	@Override
	public void configureMessageBroker(MessageBrokerRegistry config) {
		config.enableSimpleBroker("/topic");
		//채팅방만들때 topic/java, topic/python, topic/c++
		config.setApplicationDestinationPrefixes("/app");
		//웹소켓 프로그램 이름을 무엇으로 할까요?? app
	}
	
	@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		//실시간 채팅 요청할 때 주소를 지정 /chat
		registry.addEndpoint("/chat");//자바 웹소켓 통신 주소 
		registry.addEndpoint("/chat").withSockJS();//자바 스크립트 웹소켓 통신 주소 
		
		//챗봇용 채팅 요청할 때 주소를 지정 /chat2
		registry.addEndpoint("/chat2");//자바 웹소켓 통신 주소 
		registry.addEndpoint("/chat2").withSockJS();//자바 스크립트 웹소켓 통신 주소 
	}

}
