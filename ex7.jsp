<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--c는 core의 줄임말로 정의한 prefix로 태그를 사용할 수 있다. -->>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>

	<p><a href="ex6.jsp">[이전]</a><a href="ex8.jsp">[다음]</a></p>
	
	<h2>c:if 태그</h2>
	<!-- test속성에 조건식 작성하고 참이면 출력 거짓이면 아무것도 안나옴 -->
	<!-- 조건식의 결과를 담을 수 있는 변수를 선언할 수 있다. -->
	<c:if test = "${10 > 20}" var = "result1" > 
		1) 10은 20보다 크다.<br>
	</c:if>
		2) ${result1}<br>
	<c:if test = "${10 < 20}" var = "result2">
		3) 10은 20보다 작다.<br>
	</c:if>
		4) ${result2}<br>
	
	
	
	
	<p><a href="ex6.jsp">[이전]</a><a href="ex8.jsp">[다음]</a></p>



</body>
</html>