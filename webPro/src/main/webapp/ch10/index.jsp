<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인(index.jsp)</title>
</head>
<body>
	<h1>메인페이지(index.jsp)</h1>
	프로토콜://serverIP주소:8081/contextPath<br/>
	http://localhost:8081/<%=request.getContextPath() %>/index.jsp
	<hr/>
	
	<%
	Object sessionObj = session.getAttribute("AUTH_USER_ID");
  	if(sessionObj!=null){
	String loginId = (String)session.getAttribute("AUTH_USER_ID");
	%>

	<%--로그인 후 메뉴--------------------------- --%>	
	<ul>
		<li><%=loginId%>님 <a href="logout.jsp">로그아웃</a></li>
	</ul>
  	<%}else{%>
	
  	<%--로그인 전 메뉴--------------------------- --%>	
	<ul>
		<li><a href="<%=request.getContextPath() %>/ch10/loginForm.jsp">로그인(loginForm.jsp이동)=>로그인폼 요청</a>
		a href="/login.do"로 변경할 예정(p608)
		</li>
		<li>회원가입 => 회원가입 폼 요청</li>
	</ul>
	<%} %>
</body>
</html>