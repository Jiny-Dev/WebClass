<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hashtable</title>
</head>
<body>
	<h3>protocol://domainName:port/path</h3>
	<h3>http://172.30.1.20:8081/webPro/cf/mapEx02.jsp</h3>
	<hr />
	<h2>회원명단(Hashtable 구현클래스 사용)</h2>
	
	<%
	//Hashtable java 코드 작성
	Map<String, String> map = new Hashtable<String, String>();
	map.put("001", "고구마");
	map.put("002", "감자");
	map.put("003", "타로");
	map.put("004", "토란");
	map.put("005", "산마");
	
	//특정 key를 사용하여 브라우저에 출력
	//map참조변수.get(K);
	String name = map.get("003");
	out.println(name + "<hr/>"); //out 내장 객체의 println()활용 //브라우저에 출력

	//Iterator 반복자를 이용하여 출력
	Set<String> keySet = map.keySet();
	Iterator<String> iter = keySet.iterator();
	while (iter.hasNext()) {
		String key = iter.next();
		String value = map.get(key);
		out.println(key + " : " + value + "<br/>");
	}
	%>

</body>
</html>