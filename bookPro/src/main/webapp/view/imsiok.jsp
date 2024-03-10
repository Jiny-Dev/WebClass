<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 파일</title>
</head>
<body>
	<div>imsiok.jsp</div>
	<%
	//이 문서는 로그인폼에서 요청한 값을 받아서 로그인을 처리하는 페이지이다.
	//로그인폼에서 get 방식 요청 -> 로그인폼 문서로 이동 
	//로그인폼에서 post 방식 요청 -> 로그인 처리(컨트롤러 -> 서비스 ->DB) 
	String method = request.getMethod(); //loginForm.jsp => <form action="imsiok.jsp" method="post">
	//get과 post가 대문자로 넘어옴
	out.println("요청방식"+method);
	//out.println(method.equals("POST")); //대문자로 넘어오니까 true, 만약 소문자면 false
	//out.println(method.equalsIgnoreCase("post")); //대소문자 구분 안함 
	
	String form_view = "loginForm.jsp"; //구성형식이 같을 뿐 필드로 규정할 수 없다(여기선 클래스가 아니니까)/static final을 넣어 상수 필드 선언을 해보면 불가함을 알 수 있다.
	if(method.equalsIgnoreCase("get")){
		System.out.println("GET 방식 요청 시 loginForm으로 이동"); //콘솔 출력/로그인을 누를 때마다 출력됨/ 새로고침x => 변경사항적용에 쓰임
		response.sendRedirect(form_view); //자동으로 강제 이동
		//out.println("<br/>GET 방식 요청 시 loginForm으로 이동");
		//out.println("<br/><a href='loginForm.jsp'>로그인으로 이동"); //수동으로 클릭시 이동
	}else if(method.equalsIgnoreCase("post")){
		out.println("POST 방식 요청 시 Login");
	}
	
	//get방식이면   prcessForm()메서드를 호출, =>p607 22라인
	//post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p607 24라인
	%>
</body>
</html>