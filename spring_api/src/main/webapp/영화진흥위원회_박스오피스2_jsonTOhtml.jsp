<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			//var xhr = new XMLHttpRequest();
			$.ajax({
				url: "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
				data: {
					key : "6d67fa164c41539d5695302942e640be",
					targetDt :"20231209"
				},
				dataType: "json",
				success: function(json) {
					console.log(json)
					box_list = json.boxOfficeResult.dailyBoxOfficeList
					for(let i = 0; i < box_list.length; i++){
						$('#result').append(box_list[i].movieNm + "<br>")
					}
					/* console.log(json.boxOfficeResult.dailyBoxOfficeList[0].movieNm)
					console.log(json.boxOfficeResult.dailyBoxOfficeList[0].openDt)
					console.log(json.boxOfficeResult.dailyBoxOfficeList[0].rankOldAndNew)
					console.log(json.boxOfficeResult.dailyBoxOfficeList[0].scrnCnt) */
				}
			}) 
		})
	})
</script>
</head>
<body>
<button id="b1">박스오피스 가지고 오기(영화진흥위원회)</button>
<hr color="red">
<div id="result" style="background: pink; width: 600px; height: 500px;"></div>
</body>
</html>