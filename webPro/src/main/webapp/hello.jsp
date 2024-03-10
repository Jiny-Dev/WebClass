<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.text.SimpleDateFormat, java.util.Date"%>
<%
//java 코드 작성 영역=> 백엔드 언어는 웹상에서 보이지 않고 실행경과만 보인다.
SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
Date today = new Date();
String strDate = sdf.format(today);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><%=strDate%></title>
</head>
<body>
	<h1>hello.jsp</h1>
	<h2>URL형식</h2>
	<h3>프로토콜://도메인네임:포트번호/경로</h3>
	<h4>프로토콜://ip주소:port번호/파일명.확장자</h4>
	<h5>http://localhost:8081/컨텍스트패스/파일명.확장자</h5>
	<h6>http://localhost:8081/webPro/hello.html</h6>
	<hr />
	<!-- 수평선 -->
	<pre>
		<!-- preformatted 태그: 들여쓰기 등 코드에 적힌 대로 출력됨.미리보기 -->
br태그: 단순 줄바꿈.반복적용
p태그: 문단.p요소 앞뒤로 빈줄
</pre>
	<hr />
	<!-- 수평선 -->
	<ul>
		<!-- 목록의 요소를 li로 구분,  앞에 붙는 동글뱅이 -->
		<li>ul(unordered list): 순서가 필요 없는 목록. |type="disc" 기본|"circle"
			원형|"square" 사각형|</li>
		<li type="disc">프론트엔드 - HTML, CSS, JavaScript,jQuery,Ajax,JSON 등</li>
		<li type="circle">백엔드 - Java, JSP/Servlet</li>
		<li type="square">DBMS - 오라클, MySQL,MariaDB 등이 필요합니다.</li>
	</ul>
	<ol>
		<!-- 목록의 요소를 li로 구분,  앞에 붙는 번호-->
		<li>ol(ordered list): 순서가 있는 목록. |type="A" 대문자|"a" 소문자|"I" 로마
			대문자|"i" 로마 소문자|</li>
		<li type="1">요구사항 개발 프로세스</li>
		<ol>
			<li type="A">도출</li>
			<li type="a">분석</li>
			<li type="I">명세</li>
			<li type="i">확인</li>
		</ol>
	</ol>
	<hr />
	<h1>Hello</h1>
	HTML: Hyper Text Markup Language. 웹문서의 골격.내용
	<br>
	<br>
	<p>XML: eXtensible Markup Language.</p>
	- 확장 가능한 마크업 언어.
	<br> - 데이터(작은db역할)
	<br> - 다른 언어들과 연동.
	<br> - 주로 환경 설정용으로 사용

</body>

</html>
