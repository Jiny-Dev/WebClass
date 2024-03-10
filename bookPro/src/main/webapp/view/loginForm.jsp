<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login!!</title>
</head>
<body>
	<div>http://<%=request.getServerName() %>:<%=request.getServerPort() %><%=request.getContextPath() %><%=request.getRequestURI() %></div>
	<div>로그인폼(p608)</div>	<hr/>
	<form action="imsiok.jsp" method="get">
		<div>아이디:<input type="text" name="id" id="id"/></div>	
		<div>비밀번호:<input type="password" name="password" id="password"/></div>	
		<div><input type="submit" value="로그인"/>
			   	<input type="reset" value="취소"/></div>	
	</form>





</body>
</html>