<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Tag</title>
</head>
<body><hr/><hr/>
	<h3>form 요소(Web p133/JSP p74)</h3><hr/><hr/>
	<h4>http://localhost:8081/wp/ch03/formEx01.jsp</h4>
	<h4>http://localhost:8081<%=request.getContextPath()%>/ch03/formEx01.jsp</h4>
	<h4>http://localhost:8081<%=request.getRequestURI()%></h4>
	<h4>http://localhost:<%=request.getServerPort()%><%=request.getRequestURI()%></h4>

	<form method="GET" action="ok.jsp">
	<ul>
		<li>이름:<input type="text" name="userName" id="userName" required ="required" value="dummy이름을 입력하세요."/></li>
		<li>비밀번호:<input type="password" name="userPwd" id="userPwd" required ="required"/></li>
		<li><input type="submit" value="로그인"/>
			  <input type="reset" value="취소"/>
		</li><br/>
		
		<li>성별:
			<input type="radio" name="genMF" id="genM" value="M" checked="checked"/>남성
			<input type="radio" name="genMF" id="genF" value="F"/>여성
		</li>
		<li>계절(다중선택):
			<input type="checkbox" name="season" id="season1" value="spring"/>봄
			<input type="checkbox" name="season" id="season2" value="summer"/>여름
			<input type="checkbox" name="season" id="season3" value="fall"/>가을
			<input type="checkbox" name="season" id="season4" value="winter"/>겨울
		</li>
		<li>기혼 여부:
			<input type="radio" name="maYN" id="maY" value="Y" checked="checked"/>기혼
			<input type="radio" name="maYN" id="maN" value="N"/>미혼
		</li>
		<li>SNS 수신:
			<input type="radio" name="snsYN" id="snsY" value="Y" checked="checked"/>허용
			<input type="radio" name="snsYN" id="snsN" value="N"/>불허
		</li>
		<li>개인정보 제공 및 활용 동의:
			<input type="radio" name="perYN" id="perY" value="Y" checked="checked"/>허용<!--checked 기본 체크 입력값-->
			<input type="radio" name="perYN" id="perN" value="N"/>불허
		</li><!-- 위의 요소들은 배열과 같이 취급된다. -->
	</ul>
	
	</form><hr/>
	
</body>
</html>