<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> <!--c�� core�� ���Ӹ��� ������ prefix�� �±׸� ����� �� �ִ�. -->>
<%@ page import = "java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>
	<p><a href="ex11.jsp">[����]</a></p>
	
	<h2>��¥ �ٷ��</h2>
	<h3>fmt:parseData �±�</h3>
	<code>
		&lt;fmt:parseData var ="data1" value="2021-09-03" pattern="yyyy-MM-dd"/>
	</code>
	<!-- ��¥������ �������ϰڴ�.(������ ���Ŀ� �°� ���) -->
	<fmt:parseDate var="date1" value="2021-09-03" pattern="yyyy-MM-dd"/>
	<h3>fmt:formatDate �±�</h3>
	<fmt:formatDate value="${date1}" pattern="MM/dd/yy"/>
	<p><a href="ex11.jsp">[����]</a></p>
	<%
		//out.println(new SimpleDateFormat("MM/dd/yy").format(new java.util.Date()));
	%>
	
</body>
</html>