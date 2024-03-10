<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<h3>protocol://domainName:port/path</h3>
	<h3>http://172.30.1.20:8081/webPro/cf/listEx01.jsp</h3>
	<%
	//java 코드 작성
	//ArrayList 객체를 작성하여 임의의 이름 5개를 저장하여 consol에 출력
	ArrayList<String> list01 = new ArrayList<String>();
	list01.add("고구마");
	list01.add("감자");
	list01.add("타로");
	list01.add("토란");
	list01.add("산마");
	
	//consol에 출력
	for (int i = 0; i < list01.size(); i++) {
		System.out.println(list01.get(i));
	}
	%>
	<hr />
	<h2>회원명단(ArrayList 구현클래스 사용)</h2>
	<%
	//Browser에 출력
	for (int i = 0; i < list01.size(); i++) {
		String name = list01.get(i);
	%><!-- 자바코드 안에 자바코드 외의 것을 넣을수 없어 위아래로 닫아준다. -->
	<%=name%><br/><!-- 변수명만 들어갈 수 있으며 출력해준다. -->
	<%
	}
	%>
</body>
</html>