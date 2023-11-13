package com.multi.mvc01;

public class 스프링동작_확인문제 {
	// 1. 모듈이란?
	// >> 하나의 단위, tomcat은 프로젝트가 하나의 모듈
	
	// 2. di란 무엇의 약자인가?
	// >> dependency injection --> 싱글톤으로 램에 들어있는 주소를 찾아서 변수에 넣어주는 것 @Autowired
	
	// 3. ioc란 무엇의 약자인가?
	// >> Inversion Of Control --> 프로그래머가 하던 작업들을 프레임워크가 해줘서 전체 프로젝트 제어가 역전 됨
	
	// 4. ocp란 무엇의 약자인가?
	// >> Object Oriented Programming --> 부품 조립식 프로그래밍
	
	// 5. oop의 2대원칙, 각각이 의미하는 것은?
	// >> 부품을 만들때 --> 하나의 부품에는 하나의 역활을 담당 (응집도 높힘)
	// >> 부품을 조립할때 --> 하나의 부품만 조립이 가능하도록 설계 X (결합도 낮음)
	
	// 6. pom.xml의 역활은?
	// >> 라이브러리 등록 (dependency 태그 --> 메이븐 웹에가서 다운로드 받음)
	
	// 7. tomcat이 웹어플리케이션을 인식하는 첫번째 파일은?
	// >> web.xml
	
	// 8. web.xml에는 무엇이 정의되어 있는가?
	// >> 싱글톤 객체 생성 - 리스너 (사이트가 시작되기를 기다렸다가)
	// >> 프론트컨트롤러 생성 ( dispatcher 서블릿, 분배역활)
	
	// 9. tomcat이 웹어플리케이션을 실행하면서 읽는 xml파일 순서는?
	// >> web.xml --> root-context.xml --> servlet-context.xml
	
	// 10. root-context.xml의 역활은?
	// >> 싱글톤 객체 정의
	
	// 11. dispatcher 서블릿의 설청내용을 담고 있는 파일은?
	// >> servlet-context.xml
	
	// 12. dispatcher 서블릿은 언제 호출되는가? 그리고 호출되었는지를 어떻게 알 수 있는가?
	// >> 프로젝트를 시작할때, dispatcher 서블릿이 생성
	// >> 모든 호출시 dispatcher 서블릿이 항상 호출됨
	
	// 13. jsp와 servlet의 관계와 이 파일들의 역활은?
	// >> jsp --> servlet로 컨버팅되서 실행
	
	
}
