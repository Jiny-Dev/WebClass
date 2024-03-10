<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Enumeration" import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body><hr/>
	<h3>로그인 결과 페이지입니다.</h3>
	<h4>http://localhost:8081/wp/ch03/ok.jsp</h4>
	<h4>http://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getRequestURI()%></h4>
	<hr/>
	★getMethod():<%=request.getMethod()%>

	<pre>
		 교재  -로그인처리 기능구현  p607참고
		 교재에서는  form에서의 요청방식을 파악하여
		 get방식이면   prcessForm()메서드를 호출, =>p607 22라인
		 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p607 24라인
		 --------------------
		 교재  -비번변경 기능구현  p622~623참고
		 교재에서는  form에서의 요청방식을 파악하여
		 get방식이면   prcessForm()메서드를 호출, =>p622 22라인
		 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p622 24라인
		 --------------------
		 교재  -글쓰기 기능구현  p641
		 get방식이면   prcessForm()메서드를 호출, =>p641 21라인
		 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p641 23라인
		 --------------------
		 교재  -글수정 기능구현  p669
		 get방식이면   prcessForm()메서드를 호출, =>p669 28라인
		 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p669 30라인
	</pre>
	
	<hr/>
	<%/*이 문서는 client의 요청request을 받아서
			비즈니스로직 처리하는 server측의 문서이다*/
	     // client의 request를 받아 변수에 할당
	     String name = request.getParameter("userName"); //이름 저장
	     String password = request.getParameter("userPwd"); //비밀번호 저장
	     
	     String genMF = request.getParameter("genMF"); //성별 저장
	     /*배열 형태로 들어온다.
	     String season = request.getParameter("season"); //성별 저장
	     String season = {spring, summer, fall, winter}
	     출력할 경우 spring만 출력된다. 
	     */
	     String[] seasons = request.getParameterValues("season"); 
	     String maYN = request.getParameter("maYN");
	     String snsYN = request.getParameter("snsYN");
	     String perYN = request.getParameter("perYN");
	     //브라우저에 출력
	     
	     out.println("<br/>user가 입력한 내용");
	     out.println("<br/>이름:"+name);
	     out.println("<br/>비밀번호:"+password);
	     
	     out.println("<br/>성별:"+genMF);
	     //out.println("<br/>탄생 계절:"+java.util.Arrays.toString(seasons));
	     if(seasons!= null){ //선택을 안했을 시 아예 출력하지 않음
			 for(String season : seasons){
		     out.println("<br/>좋아하는 계절:"+season);
			 }
	     }else{
		     out.println("<br/>좋아하는 계절: 입력 값이 없습니다.");
	     }
	     out.println("<br/>기혼 여부:"+maYN);
	     out.println("<br/>SNS 수신:"+snsYN);
	     out.println("<br/>개인정보 제공 및 활용 동의:"+perYN);
	%>
	<hr/>
	<%
	//p77 25라인 참고
	//request.getParameterNames(): 파라미터 이름들 가져오기
	Enumeration<String> names = request.getParameterNames();
		out.println("*파라미터 이름: user가 입력 또는 선택한 값 출력 <br/>");
	while(names.hasMoreElements()){
		String parameterName =names.nextElement();
		
		//p77 37라인 참고
		//request.getParameterMap(): 브라우저가 전송한 파라미터의 맵
		Map<String, String[]> map= request.getParameterMap();
		String[] value = map.get(parameterName);
		
		//여기서는 브라우저에서 넘어오느 값들이다.(배열형식)
		//향상된 for문 사용
		//브라우저에 파라미터명: user가 입력 및 선택한 값 출력
		for(String v : value){ // 계절을 여러개 선택하였기 때문에 반복문을 사용한다.
			out.println(parameterName +":"+v+"<br/>"); //반복하지 않으면 넣은 배열값만 나온다.
		}
	}
	%>
	<hr/>
</body>
</html>