<%@ page import="java.util.Map, java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hashtable이용-로그인</title>
</head>
<body>
	<h3>URL형식 protocol://domianName:port/path</h3>
	<h3>http://172.30.1.20:8081/webPro/cf/mapEx03_Login.jsp</h3>
	http://localhost:8081/webPro/cf/loginFrm.jsp
	<hr />
	<h2>로그인처리Page</h2>
	<hr />
	<!-- html주석문 -->
	<%-- jsp주석문
  	이 문서는  client가 입력한 내용을 받아서 처리하는 서버측 페이지이다.
  	client가 전송한 id와 비밀번호 data를 받아->회원정보비교->결과출력
  	<input type="text"              name="userId" />
  	<input type="password"   name="userPwd" />
  	
  	mapEx03_Login.jsp?userId=hongid&userPwd=1234
   서버측의 페이지?파라미터명=값&파라미터명=값
   --%>
	<%
	//scriptlit(스크립트릿):java코드작성
	//client가 전송한 id와 비밀번호 data를 받기
	String inputedId = request.getParameter("userId"); //id
	String inputedPwd = request.getParameter("userPwd"); //비밀번호

	//Hashtable에  회원id와  비번
	Map<String, String> map = new Hashtable<String, String>();
	map.put("hongid", "1");
	map.put("kimid", "12");
	map.put("leeid", "123");
	map.put("choiid", "1234");
	map.put("jangid", "12345");

	//비즈니스로직수행
	//입력받은 내용과 저장된 내용이 일치하면 "로그인성공"
	//그렇지 않으면 "로그인fail"
	String result = null;
	if (map.containsKey(inputedId)) {
		String memberPwd = map.get(inputedId);
		if (memberPwd.equals(inputedPwd)) {
			result = "환영합니다.";
		} else {
			result = "비밀번호가 일치하지 않습니다.";
		}
	} else {
		result = "해당 ID가 존재하지 않습니다.";
	}

	System.out.println(result); //콘솔결과출력
	out.println(result); //브라우저에 결과출력
	%>

	<hr />
	<a href="../cf/loginFrm.jsp">상대경로:로그인페이지로이동</a>
	<a href="http://localhost:8081/webPro/cf/loginFrm.jsp">절대경로:로그인페이지로이동</a>
	<hr />


</body>
</html>



