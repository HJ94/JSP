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

	<p><a href="ex6.jsp">[����]</a><a href="ex8.jsp">[����]</a></p>
	
	<h2>c:if �±�</h2>
	<!-- test�Ӽ��� ���ǽ� �ۼ��ϰ� ���̸� ��� �����̸� �ƹ��͵� �ȳ��� -->
	<!-- ���ǽ��� ����� ���� �� �ִ� ������ ������ �� �ִ�. -->
	<c:if test = "${10 > 20}" var = "result1" > 
		1) 10�� 20���� ũ��.<br>
	</c:if>
		2) ${result1}<br>
	<c:if test = "${10 < 20}" var = "result2">
		3) 10�� 20���� �۴�.<br>
	</c:if>
		4) ${result2}<br>
	
	
	
	
	<p><a href="ex6.jsp">[����]</a><a href="ex8.jsp">[����]</a></p>



</body>
</html>