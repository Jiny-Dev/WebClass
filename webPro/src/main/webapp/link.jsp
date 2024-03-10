<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%//scriptlit ch03/requestP73.jsp만 표현하기
		String uri = request.getRequestURI();
		out.println("<br/>");
		String contexstPath = request.getContextPath();
		out.println("<br/>");
		out.println(uri.substring(contexstPath.length()));
		out.println("<br/>");
		out.println(uri.substring(request.getContextPath().length()));
	%><hr/>
	<h4>http://localhost:8081/webPro/link.jsp</h4><hr/>
	<ul>
		<li><a href="http://localhost:8081/webPro/ch03/requestP73.jsp">request기본객체(절대경로)</a></li>
		<li><a href="./ch03/requestP73.jsp">request기본객체(상대경로)</a></li>
		<li><a href="<%=request.getContextPath()%>/ch03/requestP73.jsp">request기본객체(request객체활용:절대경로)</a></li>
		<li><a href="<%=request.getContextPath()%>">request기본객체</a></li>
	</ul><hr/>
</body>
</html>