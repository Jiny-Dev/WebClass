<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.HashSet, java.util.Set"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set</title>
</head>
<body>
	<h3>protocol://domainName:port/path</h3>
	<h3>http://172.30.1.20:8081/webPro/cf/setEx01.jsp</h3>
	<hr />
	<h2>회원명단(HashSet 구현클래스 사용)</h2>
	<%//java 코드 작성
	//HashSet 객체를 작성하여 임의의 이름 5개를 저장하여 consol에 출력
	Set<String> set = new HashSet<String>();
	set.add("고구마");
	set.add("감자");
	set.add("타로");
	set.add("토란");
	set.add("산마");

	for (String setName : set) {
		System.out.println(setName); //consol에 출력
		out.println(setName+"<br/>"); //Browser에 출력
	}
	%>

</body>
</html>