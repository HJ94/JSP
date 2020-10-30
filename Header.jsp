<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "webapp.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--c는 core의 줄임말로 정의한 prefix로 태그를 사용할 수 있다. -->>



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
			<a style= "color:white;" href="/webapp/UserInfoLogoutServlet">로그아웃</a>
			<%-- href="<%=request.getContextPath()%>/UserInfoLogoutServlet">로그아웃</a> --%>
				
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