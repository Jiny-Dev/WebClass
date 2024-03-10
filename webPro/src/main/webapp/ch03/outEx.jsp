<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out내장객체</title>
</head>
<body>

	<h3>out내장객체</h3>
	out.println(), out.print()는 브라우저에 출력하는 메서드<br/>
	소스보기에서 차이점을 찾아보세요.<br/><br/>
	<%
	out.println("1println은 소스보기에서 줄 바꿈이 되어 보임");
	out.println("2println은 소스보기에서 줄 바꿈이 되어 보임");
	out.print("3print는 소스보기에서 그대로 보임");
	out.newLine();
	out.print("4print는 소스보기에서 그대로 보임");
	%>
	
</body>
</html>