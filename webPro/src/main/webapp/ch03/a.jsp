<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>a.jsp</h4>
	<xmp>
	출발 페이지 -> a.jsp페이지
	a.jsp?id=hongd&age=30
	곧 목적지가 아닌 경유 페이지가 될 예정
	</xmp>
	
	<%
	String id = request.getParameter("id"); //id
	String age = request.getParameter("age"); //age
	response.sendRedirect("b.jsp");
	System.out.println("a.jsp입니다."); //콘솔에 출력
	System.out.println("파라미터id="+id);
	System.out.println("파라미터age="+age);
	%>
	
</body>
</html>