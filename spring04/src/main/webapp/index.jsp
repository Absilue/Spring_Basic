<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>과일 / 여행 목록</title>
    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        //jquery는 버튼하나당 함수하나, 요청하나당 함수하나 할당
        // 특정한 이벤트가 발생하면 자동으로 함수를 실행시켜주는 방식을 사용(콜백함수)
        // body를 먼저 브라우저가 읽도록 하는 코드를 넣어주어야함($ 코드)
        $(function() {
            $('#b1').click(function() {
                $.ajax({
                    url : "fruit",
                    success : function(x) {
                        $('#result').html(x);
                    } // success
                }); // ajax
            }); // #b1
            
            $('#b2').click(function() {
                $.ajax({
                    url : "place",
                    success : function(x) {
                        $('#result').html(x);
                    } // success
                }); // ajax
            }); // #b2
        });
    </script>
</head>
<body>
	<button id="b1">과일 목록 가져오기</button> <br>
	<button id="b2">여행지 목록 가져오기</button>
	<hr>
	<div id="result"></div>
</body>
</html>