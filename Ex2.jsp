<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		int a;	//선언태그
		int b;
	%>
	<%
		a = 10; //실행태그
		b = 20;
		if(b / a <10){
			
		
	%><p>
	양의 값(첫번 째)<br>
		<%= "양의 값(두번째)" %> <br> <%--출력 태그 --%>
		<% out.println("다시 양의 값(세번째)"); %>
	<% 
		}else{
				
	%>
	음의 값
	<% 
		}
		
	%>
</body>
</html>