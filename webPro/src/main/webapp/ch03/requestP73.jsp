<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"><hr/><hr/>
		<title>request 객체(p73)</title>
		<h3>request 객체(p73)</h3><hr/><hr/>
		<h4>URL: http://localhost:8081/webPro/ch03/requestP73.jsp</h4><hr/>
	</head>
	
	<body>
		<%//scriptlit ch03/requestP73.jsp만 표현하기
		String ssn = "654321-1234567";
		System.out.println(ssn);
		System.out.println(ssn.substring(7)); //0부터 시작하여 6까지 미표시, 7부터 표시 124567
		System.out.println(ssn.substring(2)); //0부터 시작하여 1까지 미표시, 2부터 표시 4321-124567
		System.out.println(ssn.substring(2, 6)); //2부터 6미만까지 표시,index 2, 3, 4, 5 표시, 4321
		System.out.println(ssn.length());
		
		//--------------------------------------------------------
		
		String uri = request.getRequestURI();
		String contexstPath = request.getContextPath();
		out.println(uri);
		out.println("<br/>");
		out.println(contexstPath); //webPro
		out.println("<br/>");
		out.println(contexstPath.length());
		out.println("<br/>");
		out.println(uri.substring(12));
		out.println("<br/>");
		out.println(uri.substring(7));
		out.println("<br/>");
		out.println(uri.substring(contexstPath.length()));
		out.println("<br/>");
		out.println(uri.substring(request.getContextPath().length()));
		%><hr/>
		<ul>
			<li>getProtocol():<%=request.getProtocol()%></li><br/>
			<li>★getMethod():<%=request.getMethod()%></li><br/>
			<li>★★★getRequestURI():<%=request.getRequestURI()%></li><br/>
			<li>★★★getContextPath():<%=request.getContextPath()%></li><br/>
			<li>(클라이언트 IP주소)getRemoteAddr():<%=request.getRemoteAddr()%></li><br/>
			<li>getContentLength():<%=request.getContentLength()%></li><br/>
			<li>getCharacterEncoding():<%=request.getCharacterEncoding()%></li><br/>
			<li>getContentType():<%=request.getContentType()%></li><br/>
			<li>getServerName():<%=request.getServerName()%></li><br/>
			<li>getServerPort():<%=request.getServerPort()%></li><br/>
		</ul><hr/>

	</body>
	
</html>