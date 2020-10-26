<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	-내장 객체의 영역
	내장 객체의 영역은 객체의 유효기간이라고도 불린다.
	즉 해당 객체가 얼마 동안이나 살아있는가를 지정해 주는 것을 영역이라고 한다.
	영역은 총 4개로 page, request, session, application이 있다.
	
	page - 하나의 JSP페이지를 처리할 때 사용되는 영역
	
	request - 하나의 요청을 처리할 때 사용되는 영역
	
	session - 하나의 브라우저와 관련된 영역
	
	application - 하나의 웹 어플리케이션과 관련된 영역
	
	-액션 태그(JSP Action Tag)
	액션 태그는 XML 문법을 따른다. 즉 시작 태그와 함께 반드시 종료 태그를 포함해야 한다.
	다음은 액션 태그의 기본 형식이다.
	
	<%-- 
	<jsp:forward> - 다른 사이트로 이동할 때 사용한다.  페이지의 흐름을 제어할 때 사용 
	
	<jsp:include> - 정적 혹은 동적인 자원을 현재 페이지의 내용에 포함시킨다. 페이지를 모듈화(부품화?)할 때 사용한다.(페이지 모듈화란 하나의 페이지에 여러 레이아웃을 융합)
	
	<jsp:param>   - <jsp:forward> , <jsp:include>, <jsp:plugin>과 같이 사용되어 인자를 추가할 때 사용

	<jsp:useBean> - 빈(Bean)을 생성하고 사용하기 위한 환경을 정의하는 액션 태그
	
	<jsp:setProperty> - 액션은 빈에서 속성 값을 할당한다.
	
	<jsp:getProperty> - 액션은 빈에서 속성 값을 얻어올 때 사용한다.
	--%>
	
	-액션 태그 표현
	<%-- 
		<jsp:...속성 = "값"> 내용</jsp:....>
	--%>
	액션 태그에 속성값만 지정하고 내용이 없을 경우에는 XML규칙에 의해 끝나는 태그를 따로 하지 않고
	시작 태그의 마지막 부분을 "/>"로 마무리한다.
	내용이 없는 액션 태그의 형식이다.
	<%-- 
		<jsp: ... 속성 = "값"/>
	--%>
	
	<%-- 1.
		<jsp:forward> 액션 태그
		<jsp:forward> 태그는 현재 JSP페이지에서 URL로 지정한 특정 페이지로 넘어갈 때 사용하는 태그이다.
		
		[표현]
		<jsp:forward page = "URL"/>
		포워드 방식으로 페이지를 이동하는 것으로 기존의 request연결을 유지하면서 서버상의 url로 request정보를 전달한다.
		JSP에서 다음 코드와 동일한 동작을 한다.
		RequestDispatcher dispatcher = request.getRequestDispatcher("url");
		dispatcher.forward(request, response);
		
		2.
		<jsp:include>액션 태그 (forward태그와 표현 같음)
		웹 사이트를 구축하다 보면 페이지 상단에는 로고나 메인 메뉴를, 페이지 하단에 보이는 저작권에 표시등은 모든 웹 페이지에서 공통적으로 사용된다.
		이런 공통된 내용까지 하나의 JSP 페이지에 기술하고 다른 페이지에서 이 내용이 필요할 때 코드를 복사 붙여 넣기 하는 것 보다는 페이지 상단에
		보여야 할 로고나 메인 메뉴는 header.jsp페이지 하단에 보여야 할 저작권에 표시 등은 footer.jsp에 나누어 두고 본문에 해당되는 
		내용을 기술하는 페이지에서 이를 header.jsp와 footer.jsp를 동적으로 포함한다.
		
		내용을 기술하는 페이지에서 페이지 상단을 작성하면서 <jsp:include>태그를 사용하여 header.jsp페이지를 포함시키고 페이지 하단을
		작성하면서 <jsp:include>태그를 사용하여 footer.jsp페이지를 포함시켜 웹 사이트를 구축하는데 이렇듯 하나의 결과 화면을 모듈별로
		개별적인 여러 개의 페이지로 나눠서 작성하는 것을 모듈화라고 한다.
		
		ex)
						페이지 상단
			<jsp:include page="header.jsp"/>
						~~~
						~~~
						~~~
			<jsp:include page="footer.jsp"/>
						페이지 하단			
	--%>
</body>
</html>