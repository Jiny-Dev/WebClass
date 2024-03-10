<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>b.jsp</h4>
	<xmp>
	출발 페이지 -> a.jsp페이지 -> b.jsp페이지
	user가 보게되는 응답 페이지가 될 예정
	</xmp>
	<%
	String id = request.getParameter("id"); //id
	String age = request.getParameter("age"); //age
	System.out.println("b.jsp입니다."); //콘솔에 출력
	System.out.println("a.jsp를 통해서 건네 받은 파라미터id="+id);
	System.out.println("a.jsp를 통해서 건네 받은 파라미터age="+age);
	
	//브라우저에 출력
	out.println("a.jsp를 통해서 건네 받은 파라미터id="+id);
	out.println("<br/>a.jsp를 통해서 건네 받은 파라미터age="+age);
	
	%>
</body>
</html>