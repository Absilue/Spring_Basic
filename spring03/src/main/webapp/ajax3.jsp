<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        //jquery는 버튼하나당 함수하나, 요청하나당 함수하나 할당
        // 특정한 이벤트가 발생하면 자동으로 함수를 실행시켜주는 방식을 사용(콜백함수)
        // body를 먼저 브라우저가 읽도록 하는 코드를 넣어주어야함($ 코드)
        $(function() {
            $('#b1').click(function() {
                $.ajax({
                    url : "computer",
                    data : {
                        com : $('#com').val(),
                        price : $('#price').val(),
                        mouse : $('#mouse').val(),
                        price2 : $('#price2').val()
                    },
                    success : function(x) {
                        alert(x);
                        $('#result').html(x);
                    } // success
                }); // ajax
            }); // #b1
        });
    </script>
</head>
<body>
    컴퓨터 종류 : <input id="com" value="Mac"><br>
    컴퓨터 가격 : <input id="price" value="10000"><br>
    마우스 종류 : <input id="mouse" value="Logitech"><br>
    마우스 가격 : <input id="price2" value="3000"><br>
    <br>
    <button id="b1">구매 항목 확인</button>
    <hr color="blue">
    <div id="result">ajax 통신결과 들어가는 곳</div>
</body>
</html>