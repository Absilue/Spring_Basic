<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/sockjs-0.3.4.js"></script>
<script type="text/javascript" src="resources/js/stomp.js"></script>
<script type="text/javascript" src="resources/js/webSocketSendToUserApp.js"></script>
<script type="text/javascript">
var stompClient = null;

function connect() {
	//1. 전화기역할을 하는 web Socket객체 생성 
	var socket = new SockJS("${pageContext.request.contextPath}/chat2")
	//2. 위 Socket을 가지고 서버와 통신할 수 있는 부품 StompClient객체 
	stompClient = Stomp.over(socket)
	//3. 연결하면 됨.! + 데이터가 도착했을 때 자동으로 호출되는 함수를 하나 정의!
	stompClient.connect({}, function(frame) { 
		console.log("연결됨." + frame)
		//stompClient를 이용해서 특정한 채팅방에 가입을 해봅시다.
		stompClient.subscribe("/topic/messages2", function(messageOutput) {
			console.log(JSON.parse(messageOutput.body))
			json = JSON.parse(messageOutput.body)
			$('#response').append(json.menu + "<br>")
		})
	})
	
}
function disconnect() {
	if(stompClient != null){
		stompClient.disconnect()
		console.log("연결끊어짐.")
	}
}
function sendMessage() {
	//누가 
	var from = document.getElementById("from").value
	//var from = $('#from').val()
	//입력한 내용 
	var text = document.getElementById("text").value
	//stompClient.send()
	stompClient.send("/app/chat2", {}, JSON.stringify({
		"from" : from,
		"text" : text
	}))
	$('#text').val("")
}
</script>

<style>
    body {
        background-color: #f8f9fa; /* 배경을 연한 회색으로 설정합니다. */
        padding-top: 50px; /* 상단 여백 추가 */
    }
    hr {
        border-top: 2px solid #dc3545; /* 수평선의 색을 부트스트랩의 빨간색으로 지정합니다. */
    }
    #response {
        background-color: #fde2e2; /* 응답 섹션의 배경을 연한 분홍색으로 지정합니다. */
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #dc3545;
        margin-bottom: 10px;
        width: 100%; /* 결과 창을 가로로 꽉 차게 설정합니다. */
        max-width: 800px; /* 최대 가로 길이를 설정합니다. */
    }
    #conversationDiv {
        max-width: 500px; /* 대화 섹션의 최대 너비를 지정합니다. */
        margin: 0 auto; /* 가운데 정렬을 위해 margin을 auto로 설정합니다. */
    }
</style>

</head>
<body onload="disconnect()">
    <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">ChatBOT 연습</a>
        </div>
    </nav>
    <div class="container mt-5">
        <img src="resources/img/payco_com.jpg" class="img-fluid mb-4" alt="Payco Logo">
        <hr>
        <div class="input-group mb-3">
            <span class="input-group-text">닉네임 입력:</span> 
            <input type="text" class="form-control" id="from" value="Hess">
        </div>
        <div class="mb-3 d-flex justify-content-between align-items-center">
            <button id="connect" onclick="connect();" class="btn btn-danger">연결</button>
            <button id="disconnect" disabled="disabled" onclick="disconnect();" class="btn btn-danger">연결 해제</button>
        </div>
        <div id="conversationDiv">
            <p id="response" class="alert alert-success">
            ChatBOT >> 1)내 포인트 2)결제 및 취소<br>
            </p>
            <div class="input-group mb-2">
                <input type="text" id="text" placeholder="번호를 선택해주세요." class="form-control" style="flex: 1 0 80%;" />
                <button id="sendMessage" onclick="sendMessage();" class="btn btn-primary" style="flex: 0 0 20%;">전송</button>
            </div>
        </div>
    </div>
</body>