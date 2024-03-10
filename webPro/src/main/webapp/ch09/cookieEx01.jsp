<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키(cookieEx01.jsp)</title>
</head>
<body>
	<h4>cookieEx01.jsp(교재 p205)</h4>
	<%--이 문서에는 쿠키를 만들어 response에 실어 Client에게 줄 예정--%>
	<%
		//1. Cookie를 생성
		Cookie cookie = new Cookie("id","Ho!");
		//2. 저장 위치를 지정
		cookie.setPath("/");
		//3. setMaxAge(): 생존기간 설정(선택)
		cookie.setMaxAge(60*60*24); //초(sec) 단위, (60*60*24) 하루 //0이면 cookie 삭제
		//4. ★이렇게 해서 만들어진 쿠키를 response에 실어서 Client에게 보내기
		response.addCookie(cookie);
		
		//만약 여러 개의 쿠키 정보를 Client에게 제공하고 싶으면 반복작업 
		//1. Cookie를 생성
		cookie = new Cookie("nickName","Yo!");
	
		//value를 변경할 수 있다.
		cookie.setValue("Ha!eeeee~!");
		//2. 저장 위치를 지정
		cookie.setPath("/");
		//4. ★이렇게 해서 만들어진 쿠키를 response에 실어서 Client에게 보내기
		response.addCookie(cookie);
	%>
	<p>쿠키 굽는데 성공했어요!!!</p>
	
	
</body>
</html>