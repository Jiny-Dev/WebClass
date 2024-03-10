<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>
</head>
<body>
	<h2>로그인화면(loginFrm.jsp)</h2>

	<form name="loginFrm" action="./mapEx03_Login.jsp" method="post">
		*아이디: <input type="text" name="userId" required="required" /><br /> 
		*비밀번호:<input type="password" name="userPwd" required="required" /><br /> 
		<input type="submit"value="로그인" /> <input type="reset" value="취소" />
	</form>

	<hr />
	
	<xmp> mapEx03_Login.jsp?userId=hongid&userPwd=1234 서버측의 페이지?파라미터명=값&파라미터명=값
	<form name="폼요소명" action="서버측의 페이지" method="get(기본값) |  post"></form>
	</xmp>
	
	<pre>
	 *절대경로(absolute path)
	 현재문서URL   http://localhost:8081/webPro/cf/loginFrm.jsp
	 이동문서URL   http://172.30.1.20:8081/webPro/cf/mapEx03_Login.jsp
	 
	 *상대경로(relative path)
	 현재위치  .
	 상위위치  ..
	 현재문서URL   http://localhost:8081/webPro/cf/loginFrm.jsp
	 이동문서URL   http://172.30.1.20:8081/webPro/cf/mapEx03_Login.jsp
	</pre>
	
	<hr />
	
	<a href="../cf/mapEx03_Login.jsp">상대경로: mapEx03_Login이동</a>
	<br />
	<a href="./mapEx03_Login.jsp">상대경로: mapEx03_Login이동</a>
	<br />
	<a href="mapEx03_Login.jsp">상대경로: mapEx03_Login이동</a>
	<br />
	<br />
	<a href="http://127.0.0.1:8081/webPro/cf/mapEx03_Login.jsp">절대경로:
		mapEx03_Login이동</a>
	<hr />



</body>
</html>







