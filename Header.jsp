<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "webapp.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--c�� core�� ���Ӹ��� ������ prefix�� �±׸� ����� �� �ִ�. -->>



<%
	User user = (User)session.getAttribute("user");
%>
<div style="background-color:#00008b;
	color:#ffffff; height:20px; padding: 5px;">
		USER Header Page
		<%-- <% 
		if (user != null && user.getId() != null){
		%> --%>
		<c:choose>
			<c:when test="${sessionScope.user != null}">
			<c:set var = "user" value="${sessionScope.user}"/>
			<span style = "float :right;">
			<%-- <%=user.getName() %> --%>
			${user.name}
			<a style= "color:white;" href="/webapp/UserInfoLogoutServlet">�α׾ƿ�</a>
			<%-- href="<%=request.getContextPath()%>/UserInfoLogoutServlet">�α׾ƿ�</a> --%>
				
			</span>
			</c:when>
			<c:otherwise>
				<script>
					location.href="/webapp/jspEx/LoginServlet";
				</script>
			</c:otherwise>
		</c:choose>
			
		<%-- <%
			}else{
		%>
			<script>
				location.href="/webapp/jspEx/LoginServlet";
			</script>
		<%
			}
		%>	 --%>
</div>