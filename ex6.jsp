<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--c�� core�� ���Ӹ��� ������ prefix�� �±׸� ����� �� �ִ�. -->>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>

	<p><a href="ex5.jsp">[����]</a><a href="ex7.jsp">[����]</a></p>
	<h2>c:remove �±�</h2>
	<h3>�����ҿ� ����� �� ����</h3>
	<% pageContext.setAttribute("username1", "ȫ�浿"); %>
	1) ${username1}<br>
	<!-- username1�� ���� ���� -->
	<c:remove var = "username1" />
	2) ${username1}<br>
	
	
	
	
	<p><a href="ex5.jsp">[����]</a><a href="ex7.jsp">[����]</a></p>
	
</body>
</html>