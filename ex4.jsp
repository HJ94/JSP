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
<p><a href= "ex5.jsp">[다음]</a></p>
<h2>c:out 태그</h2>
	1) <c:out value ="안녕하세요!"/><br> <!-- out은 출력 태그 -->
	2) <c:out value ="${null}">반갑습니다.</c:out><br> <!-- 1과 같음 -->
	3) <c:out value="안녕하세요!">반갑습니다.</c:out><br> <!-- 같이 사용했을 때 속성 value가 먼저 사용됨 -->
	4) <c:out value="${null}"/><br> 
	<p><a href = "ex5.jsp">[다음]</a></p>
</body>
</html>