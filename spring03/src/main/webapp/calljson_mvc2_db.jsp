<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<style>
    body {
        background-color: #f5e7ea; /* 옅은 분홍색 */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    #result {
        background-color: #fff6f6; /* 연한 살구색 */
        width: 800px;
        height: 800px;
        padding: 20px;
        margin: 20px auto;
        border: 2px solid #e0a4a4; /* 연한 분홍색 테두리 */
        border-radius: 10px;
    }

    button {
        background-color: #f7d6e0; /* 연한 보라색 */
        border: none;
        color: #4e4e4e; /* 짙은 회색 */
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 10px;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: #ebb3cb; /* 연한 분홍색 */
    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    table, th, td {
        border: 1px solid #e0a4a4; /* 연한 분홍색 테두리 */
        text-align: center;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    tr:nth-child(even) {
        background-color: #fff1f3; /* 연한 연분홍색 */
    }

    tr:hover {
        background-color: #ffe0e0; /* 연한 살구색 */
    }
</style>
<script type="text/javascript">
    $(function() { 
        $('#b3').click(function() {
            $.ajax({
                url: "jsonbbs",
                success: function(array) {
                    console.log(array);
                    
                    var tableHeader = "<table><tr><th>아이디</th><th>제목</th><th>내용</th><th>작성자</th></tr>";
                    $('#result').html(tableHeader);
                    
                    $(array).each(function(i, json) { 
                        var id_value = json.id;
                        var title_value = json.title;
                        var content_value = json.content;
                        var writer_value = json.writer;
                        
                        var tableRow = "<tr><td>" + id_value + "</td><td>" + title_value + "</td><td>" + content_value + "</td><td>" + writer_value + "</td></tr>";
                        $('#result table').append(tableRow);
                    });
                    
                    var tableFooter = "</table>";
                    $('#result').append(tableFooter);
                }
            });
        });
    });
</script>
</head>
<body>
    <button id="b3">JSON으로 받아와보자(list)</button>
    <hr color="red">
    <div id="result">ajax 통신 결과 들어가는 곳<hr></div>
</body>
</html>