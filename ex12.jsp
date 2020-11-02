<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <!--c는 core의 줄임말로 정의한 prefix로 태그를 사용할 수 있다. -->>
<%@ page import = "java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
	<p><a href="ex11.jsp">[이전]</a></p>
	
	<h2>날짜 다루기</h2>
	<h3>fmt:parseData 태그</h3>
	<code>
		&lt;fmt:parseData var ="data1" value="2021-09-03" pattern="yyyy-MM-dd"/>
	</code>
	<!-- 날짜정보를 포맷팅하겠다.(데이터 형식에 맞게 사용) -->
	<fmt:parseDate var="date1" value="2021-09-03" pattern="yyyy-MM-dd"/>
	<h3>fmt:formatDate 태그</h3>
	<fmt:formatDate value="${date1}" pattern="MM/dd/yy"/>
	<p><a href="ex11.jsp">[이전]</a></p>
	<%
		//out.println(new SimpleDateFormat("MM/dd/yy").format(new java.util.Date()));
	%>
	
</body>
</html>