<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- uri의 주소를 c에 저장(대체)한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<h4>JSTL(Standard Tag Library)-교재p292</h4>
	<h5>Core Tag: 변수설정, 조건문, 반목분 등에 제공</h5>
	<%
	//jsp의 out 기본객체를 이용하여 브라우저 출력
	out.println("스크립트릿을 이용해서 출력<br/>");
	String msg = "hello";
	%>
	*jsp의 표현식을 이용하여 브라우저 출력<%=msg%><br /> *JSTL-Core의 out 태그를 이용해서 브라우저 출력
	<c:out value="내용" />
	<!--http://java.sun.com/jsp/jstl/core:out value="내용"/-->
	<c:out value="내용" />
	<br />
	<c:out value="${'<tag>,&'}" />
	<br />

	<%--
	 <c:set var = "변수명" scope = "영역 session" value = "변수값"/>
 	 --%>
 	 
	<!-- set -->
	<c:set var="salary" scope="session" value="${2000*2}" />
	<c:out value="${salary}" />

	<hr />

	<!-- remove -->
	<p>
		Before Remove Value:
		<c:out value="${salary}" />
	</p>
	<c:remove var="salary" />
	<p>
		After Remove Value:
		<c:out value="${salary}" />
	</p>

	<hr />

	<!-- choose -->
	<c:set var="salary" scope="session" value="${2000*2}" />
	<p>
		Your salary is :
		<c:out value="${salary}" />
	</p>
	
	<c:choose>
	
		<c:when test="${salary <= 0}">
            Salary is very low to survive.
         </c:when>

		<c:when test="${salary > 1000}">
            Salary is very good.
         </c:when>

		<c:otherwise>
            No comment sir...
         </c:otherwise>
         
	</c:choose>

	<hr />

	<!-- if -->
	<c:set var="salary" scope="session" value="${2000*2}" />
	<!-- 위에서 삭제해 다시 선언 -->
	<c:if test="${salary > 2000}">
		<p>
			My salary is:
			<c:out value="${salary}" />
		<p>
	</c:if>

	<hr />

	<!-- forEach -->
	//for(int i=1; i<5; i++){System.out.println("Item"+i);}와 같은 형태<br/>
 	<c:forEach var = "i" begin = "1" end = "5" step="1"> <!-- step은 증감식 느낌 -->
        Item <c:out value = "${i}"/><br/>
    </c:forEach>

	<hr />

	<!-- forTokens -->
    //forTokens items = "값1, 값2, 값n" delims = "구분자, 공백 - / 등" var = "name"><br/>
    <c:forTokens items = "Zara,nuha,roshy" delims = "," var = "name">
        <c:out value = "${name}"/><br/>
    </c:forTokens>
      
	<hr />
      
	<!-- forTokens -->








</body>
</html>