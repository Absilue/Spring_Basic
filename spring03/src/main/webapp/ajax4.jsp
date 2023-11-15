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
                    url: "movie",
                    data: {
                        title: $('#title').val(),
                        price: $('#price').val(),
                        person: $('#person').val()
                    },
                    success: function(x) {
                        alert(x);
                        $('#result').html(x);
                    } // success
                }); // ajax
            }); // #b1
        });
    </script>
</head>
<body>
    영화 제목 : <input id="title" value="변호사"><br>
    티켓 가격 : <input id="price" value="12000"><br>
    인원수 : <input id="person" value="3"><br>
    <br>
    <button id="b1">영화 예매</button>
    <hr color="blue">
    <div id="result">ajax 통신결과 들어가는 곳</div>
</body>
</html>