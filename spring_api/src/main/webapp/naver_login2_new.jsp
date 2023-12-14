<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
	
</head>
<body>
<div id="naver_id_login"></div>
<script type="text/javascript">
//client-id
	var naver_id_login = new naver_id_login("VFdsT2SPGL6J7j2_rpyi",
			"http://localhost:8888/api/callback.jsp");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2, 40);
	naver_id_login.setDomain("http://localhost:8888/api/");
	naver_id_login.setState(state);
	//naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
</script>
</body>
</html>