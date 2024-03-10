<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk2</title>
</head>
<body>
	<h4>loginOk2.jsp</h4><hr/>
		이 문서는 loginForm.jsp에서 client가 보낸 id, password를 받아 처리하는 server측 페이지이다.<br/>
		나중에는 LoginHandler.java(p606)에서 처리할 예정<hr/>
		
	<% //MVC 패턴: Client -- 요청(request) --> Server
		  //Server는 요청에 따라 비즈니스로직 수행
		  //Controller가 호출
		  
		  //Controller가 해야할 일 4가지
		  //1.Parameter 얻기
		  	String id = request.getParameter("id");
		  	String password = request.getParameter("password");
		  	
		  //2.비즈니스로직을 수행 -> Service <-> DAO <-> DB
		  	//회원 DB의 id를 java/비번 qwert로 가정하고 진행
		  	//비교하여 id와 비번 모두 일치 시
		  	//세션에 정보 저장
		  	String dbId = "java";
		  	String dbPw = "qwert";
		  	if(dbId.equals(id) && dbPw.equals(password)){
		  //3.Model - Session 이용, Request 이용
			//session.setAttribute(String 속성명, Object 값)
			session.setAttribute("AUTH_USER_ID", id);
			session.setAttribute("AUTH_USER_PW", password);
			
		  	String loginId = (String)session.getAttribute("AUTH_USER_ID");
		  	String loginPw = (String)session.getAttribute("AUTH_USER_PW");
		  //★★★반드시 순서대로 이루어지는 것은 아니며, 반드시 필요한 것도 아니다.★★★
		%>
		
			<ol>
				<li>세션에 저장된 ID: <%=loginId%></li>
				<li>세션에 저장된 PW: <%=loginPw%></li><%--원래 패스워드는 절대 하면 안된다--%>
				<li><%=loginId%>님 <a href="logout.jsp">로그아웃</a></li>
			</ol>
			
		<% 
		  	}else{
		  	//id와 비번 불일치 시 loginForm.jsp로 이동
		  	//"id나 비번이 불일치"합니다. 메세지를 
		  	//Client에게 보낼 예정
		  	//3.Model 처리
		  	//request.setAttribute(String 속성명, Object 값)
		  	request.setAttribute("errMSG", "id나 비밀번호가 불일치 합니다.");
		  	System.out.println(request.getAttribute("errMSG")); //콘솔출력
		  	
		  	//4.View지정
		  	//out.println("id나 비밀번호가 불일치 합니다."); //브라우저 출력
		  	RequestDispatcher dispatcher = request.getRequestDispatcher("loginForm2.jsp");
		  	dispatcher.forward(request, response);
		  	//response.sendRedirect("loginForm2.jsp");
		  	}
		  	
		  //★★★반드시 순서대로 이루어지는 것은 아니며, 반드시 필요한 것도 아니다.★★★
		%>
		
		  <hr/>
		  
		 <%
		  //session이 생성된 시간
		  long ct = session.getCreationTime();
		  Date time = new Date(ct); 
		  SimpleDateFormat  formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss"); //p235 7line
		%>
		
	<!--  jsp에는 session이 내장되어 있으며, servlet에서는 HttpSession을 얻어야 한다.  -->
	<ul>
		<li>session의 id: <%=session.getId()%></li>
		<br/>
		<li>session이 생성된 시간
			<ol>
				<li>session.getCreationTime(): <%=session.getCreationTime()%></li>
				<li>Date 객체이용: <%=time%></li>
				<li>Date 객체에 포맷 적용<%=formatter.format(time)%></li>
			</ol>
		</li>
		<li>최근 접근 시간
			<ol>
				<li>session.getLastAccessedTime():<%=session.getLastAccessedTime() %>	</li>
				<li></li>
				<li></li>
			</ol>
		</li>
	</ul>
</body>
</html>