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
	
	<p><a href="ex7.jsp">[이전]</a><a href="ex9.jsp">[다음]</a></p>
	
	<!-- switch-case문과 쓰임이 비슷하다. -->
	<h2>c:choose 태그</h2>
	<!-- userid에 hong -->
	<c:set var = "userid" value="admin"/>
	<!-- choose when 분기문에 다중 if문과 같다.-->
	<c:choose>
		<c:when test="${userid == 'hong'}">
		홍길동님 반갑습니다.
		</c:when>
		<c:when test="${userid == 'lim'}">
		임꺽정님 반갑습니다.
		</c:when>
		<c:when test="${userid == 'admin'}">
		관리자 전용 페이지입니다.
		</c:when>
		<!-- otherwise는 디폴트 -->
		<c:otherwise>
			등록되지 않은 사용자입니다.	
		</c:otherwise>
	</c:choose>
	
	
	<p><a href="ex7.jsp">[이전]</a><a href="ex9.jsp">[다음]</a></p>
	
</body>
</html>