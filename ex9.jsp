<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--c는 core의 줄임말로 정의한 prefix로 태그를 사용할 수 있다. -->>
<%@ page import = "java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	
	<p><a href="ex8.jsp">[이전]</a><a href="ex10.jsp">[다음]</a></p>
	
	<h2>c:forEach 태그</h2>
	<h3>반복문 - 배열</h3>
	<% pageContext.setAttribute("nameList", new String[] {"홍길동","임꺽정","일지매", "이순신"}); %>
	
	<ul>
		<!--forEach-향상된 for문 / items="${nameList}에서 첫 번쨰 홍길동먼저 name으로 던져주면 ${name}으로 출력되고 다음 임꺽정도 똑같이 반복해서 출력 !-->
		<!--  begin - 출발점 / end - 종료점 -->
		<c:forEach var ="name" items="${nameList}"  begin= "2" end= "3">
		<li>${name}</li>	
		</c:forEach>
	</ul>
	
	<h3>반복문 - 배열의 시작 인덱스와 종료 인덱스 지정</h3>
	<% pageContext.setAttribute("nameList2", new String[]{"홍길동", "임꺽정", "일지매", "주먹대장", "똘이장군"}); %>
	
	<ul>
		<c:forEach var="name" items="${nameList2}" begin = "0" end ="2">
		<li>${name}</li>
		</c:forEach>
	</ul>
	
	
	<h3>반복문 - ArrayList 객체</h3>
	<%
		ArrayList<String> nameList3 = new ArrayList<String>();
		nameList3.add("홍길동");
		nameList3.add("임꺽정");
		nameList3.add("일지매");
		nameList3.add("주먹대장");
		nameList3.add("똘이장군");
		pageContext.setAttribute("nameList3", nameList3);
	%>
	
	<ul>
		<c:forEach var="name" items="${nameList3}" begin="0" end="3">
		<li>${name}</li>
		</c:forEach>
	</ul>	
	
	<h3>반복문 - 콤마로 구분된 문자열</h3>
	<% pageContext.setAttribute("nameList4", "홍길동, 임꺽정, 일지매, 주먹대장, 똘이장군"); %>
	
	<ul>
	<c:forEach var = "name" items="${nameList4}">
		<li>${name}</li>
	</c:forEach>
	</ul>
	
	
	<h3>반복문 - 특정 횟수 만큼 반복</h3>
	
	<c:forEach var ="no" begin="1" end="6">
		<!-- 리스트에서  유용하게 사용-->
		<li><a href="ex${no}.jsp">JSTL 예제${no}</a></li>
	</c:forEach>
	
	
	
	<p><a href="ex8.jsp">[이전]</a><a href="ex10.jsp">[다음]</a></p>
	
</body>
</html>