<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키(cookieEx02.jsp)</title>
</head>
<body>
	<h4>cookieEx02.jsp(교재 p205)</h4>
	<%--이 문서에는 이미 만들어진 쿠키를 달라고 요청하여 쿠키의 정보를 사용하는 문서이다.--%>
	<%
	//Client에게 쿠키 달라고 요청
	Cookie[] cookies=request.getCookies();
	
	//반드시 Client에게 제공한 쿠키가 존재하는지 확인해야 한다.
	if(cookies==null || cookies.length==0){
		//쿠키가 delete 되었다는 의미
		out.println("쿠키가 delete 되었기에 정보를 사용할 수 없습니다.");
	}else{
		//쿠키는 존재하지만, Server가 원하는 정보가 없는 경우가 있을 수 있다.
		boolean isCookie = false;
		for(int i=0; i<cookies.length;i++){
			Cookie temp = cookies[i];
			String name = temp.getName();
		
			if(name.equals("nickName~~~~")){
				isCookie = true;
				String value = temp.getValue();
				out.print("<h5>"+name+":"+value+"</h5>");
				//out.print("<h5>귀하(Client)의 별명은 "+value+"</h5>");
			}
		}
		
		if(isCookie == false){
				out.print("서버가 요구한 쿠키 정보를 찾을 수 없습니다.");
		}
		
	}
	
	
	%>
</body>
</html>