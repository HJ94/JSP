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

	<p><a href="ex5.jsp">[이전]</a><a href="ex7.jsp">[다음]</a></p>
	<h2>c:remove 태그</h2>
	<h3>보관소에 저장된 값 제거</h3>
	<% pageContext.setAttribute("username1", "홍길동"); %>
	1) ${username1}<br>
	<!-- username1의 값을 제거 -->
	<c:remove var = "username1" />
	2) ${username1}<br>
	
	
	
	
	<p><a href="ex5.jsp">[이전]</a><a href="ex7.jsp">[다음]</a></p>
	
</body>
</html>