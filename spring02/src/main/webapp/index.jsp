<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>북마크 서비스</title>

<style>
body {
    font-family: 'Arial', sans-serif;
    text-align: center;
    background-color: #f4f4f4;
}

.container {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
    margin-top: 20px;
}

form table {
    margin: 0 auto;
}

h1 {
    color: #333;
}

img {
    max-width: 100%;
    height: auto;
    margin-bottom: 20px;
}

button {
    padding: 10px 20px;
    background-color:#03C75B;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #2077c8;
}

td {
    text-align: center;
}
</style>

</head>
<body>
    <div class="container">
        <img src="resources/img/naver.jpg" alt="Naver Logo">

        <h1>북마크 단일 검색</h1>
        <form action="one">
            <table>
                <tr>
                    <td>아이디 :</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">북마크 검색</button></td>
                </tr>
            </table>
        </form>

        <hr color="#03C75B">
        
        <h1>북마크 전체 리스트</h1>
        <form action="list">
            <table>
                <tr>
                    <td><button>전체 리스트 보기</button></td>
                </tr>
            </table>
        </form>

        <hr color="#03C75B">
        
        <h1>북마크 추가</h1>
        <form action="insert">
            <table>
                <tr>
                    <td>아이디 :</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>이름 :</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>URL :</td>
                    <td><input type="text" name="url"></td>
                </tr>
                <tr>
                    <td>IMG :</td>
                    <td><input type="text" name="img"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">북마크 추가</button></td>
                </tr>
            </table>
        </form>

        <hr color="#03C75B">
        
        <h1>북마크 수정</h1>

        <form action="update">
            <table>
                <tr>
                    <td>아이디 :</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>이름 :</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">북마크 수정</button></td>
                </tr>
            </table>
        </form>

        <hr color="#03C75B">
        
        <h1>북마크 삭제</h1>

        <form action="delete">
            <table>
                <tr>
                    <td>아이디 :</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">북마크 삭제</button></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>