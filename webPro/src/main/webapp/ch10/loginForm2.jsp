<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼-JSTL을 사용하여 변환하자</title>
</head>
<body>
<xmp>
p608에서는 action="login.do"로 지정

</xmp>
	<a href="<%=request.getContextPath() %>/ch10/index.jsp">메인(index.jsp)</a>
	<hr/>
	<%//로그인 실패시에만 서버로부터 받은 로그인 실패 원인 메세지를 로그인 실패시에만 출력
	//3. 서버는 아래와 같이 Model 처리 하였다.
	//session.setAttribute(String 속성명, Object 값)
	//request.setAttribute("errMSG", "id나 비밀번호가 불일치 합니다.");
	String model = (String)request.getAttribute("errMSG");
	%>
	${model}
	
	<c:if test="${model}!=null">
		<p>모델내용: ${model}</p><hr/>
	</c:if>
	
	<h4>loginForm2.jsp(p608)</h4><hr/>
	<form name="loginForm" id="loginForm" action="loginOk2.jsp" method="post">
		<div><br/>
		아이디: <input type="text" name="id" id="id" placeholder="아이디를 입력하세요"/><br/>
		비밀번호: <input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요"/>
		</div>
		<div><br/>
		<input type="submit" value="로그인"/>
		<input type="reset" value="초기화"/>
		</div>
	</form>
</body>
</html>