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
	
	<p><a href="ex7.jsp">[����]</a><a href="ex9.jsp">[����]</a></p>
	
	<!-- switch-case���� ������ ����ϴ�. -->
	<h2>c:choose �±�</h2>
	<!-- userid�� hong -->
	<c:set var = "userid" value="admin"/>
	<!-- choose when �б⹮�� ���� if���� ����.-->
	<c:choose>
		<c:when test="${userid == 'hong'}">
		ȫ�浿�� �ݰ����ϴ�.
		</c:when>
		<c:when test="${userid == 'lim'}">
		�Ӳ����� �ݰ����ϴ�.
		</c:when>
		<c:when test="${userid == 'admin'}">
		������ ���� �������Դϴ�.
		</c:when>
		<!-- otherwise�� ����Ʈ -->
		<c:otherwise>
			��ϵ��� ���� ������Դϴ�.	
		</c:otherwise>
	</c:choose>
	
	
	<p><a href="ex7.jsp">[����]</a><a href="ex9.jsp">[����]</a></p>
	
</body>
</html>