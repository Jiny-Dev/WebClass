<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx</title>
<style type="text/css">
/*CSS 주석문*/
/*선택자 {CSS속성:값*; CSS속성:값;}*/
/*선택자에는 tag이름, .클래스명, #id명*/
.c1 {width:75px;}
</style>

</head>
<body>
	<h4>form(웹교재 p133)</h4>
	<pre>
	<a href="https://www.w3schools.com/html/html_forms.asp" target="_blank">form참고</a>
	</pre><hr/>
	<%--  
        oninput은 input이벤트가 발생되면
        parseInt(price.value)은 name속성이 price인 요소의 값(value)을  정수화한다
        x.value는   name속성이 x인 요소의 값(value)을 의미
        x.value=parseInt(price.value)은
        price의 값을 정수화하여 output요소의 값으로 설정하라는 의미  --%>
  		<form name="frm" id="frm" method="get" action="ok.jsp" oninput="x.value=parseInt(price.value)" 
  		autocomplete="off">
		
		<input type="submit" value="로그인">
        <img src="http://localhost:8081/webPro/imgs/submit.png" 
		alt="submitIMG" title="전송이미지" class="c1"/>
		<input type="image"
		src="http://localhost:8081/webPro/imgs/submit.png"
		title="submit 역할 이미지" class="c1"/>
		
		<input type="reset" value="취소"/>
		
		<input type="button" value="Type 속성 값이 button" onclick="alert('이~ 왔슈!');"/><!-- 자바스크립트 사용 -->
		<button>button요소(submit 역할)</button>
		<button type="button">button요소(type="button")</button>
		<button type="submit">button요소(type="submit")</button>
		<button type="reset">button요소(type="reset")</button>
			
		<fieldset>
			<legend>html5에 여러 타입 속성 값</legend>
			<ul>
				<li>color: <input type="color" name="col" id="col"/></li>
				<li>date: <input type="date" name="" id=""/></li>
				<li>datetime-local: <input type="datetime-local" name="d2" id="d2"></li>
				<li>month: <input type="month" name="d3" id="d3"/></li>
				<li>week: <input type="week" name="d4" id="d4"/></li>
				<li>time: <input type="time" name="d5" id="d5"/></li>

				<!-- 브라우저마다 지원형태가 다르다. Quary를 통한 유효성 검사가 필요하다. -->
				<li>email: <input type="email" name="email" id="email"/></li>
				<li>tel: <input type="tel" name="tel" id="tel"/></li>
				<li>url: <input type="url" name="url" id="url"/></li>
				
				<!-- abc.png와 같이 그냥 문자열로 받는다. -->
				<li>file: <input type="file" name="file" id="file"/></li>
				<!--file 업로드 기능 구현(jsp p696 참고)
				반드시 method="post"
				enctype="multipart/form-data" 속성값으로 설정해야한다.-->
			    
  			    <li>범위range:
  		        <span id="minPrice">1000</span>
  		        <input type="range" name="price" id="price" min="1000" max="10000"  step="1"/>
  		        <span id="maxPrice">10000</span>
  		        
				<li>선택한 값: <output name="x" for="price"/></output></li>
				
				<li>주문수량 number: 
				<input type="number" name="orderqty" id="orderqty" value="1" min="1"  max="10" step="1"/></li>
				
				<li>search: <input type="search" name="search" id="search" autofocus="autofocus" placeholder="검색어를 입력하세요."/></li>
				
				<% int bno=100; %>
				<li>★hidden: <input type="hidden" name="bno" id="bno" value="<%=bno%>"/></li>
				
			    <li>:<input type="" name="" id=""/></li>
			</ul>
		</fieldset>
		
		<ul>
			<li>이름(maxlength속성="10"): <input type="text" name="uName" id="uName" size="15" maxlength="10"/></li>
			<li>암호(size속성="20"): <input type="password" name="uPwd" id="uPwd" size="20"/></li>
			
			<li>성별(단일선택): 
			<input type="radio" name="gender" id="genderMa" value="남성입니다." checked="checked"/><label for="genderMa">남성</label>
			<input type="radio" name="gender" id="genderFe" value="여성입니다."><label for="genderFe">여성</label></li>
			
			<li>좋아하는 동물(다중선택): 
			<input type="checkbox" name="animals" id="animals01" value="Panda" checked="checked"/><label for="animals01">판다</label>
			<input type="checkbox" name="animals" id="animals02" value="Cat"/><label for="animals02">고양이</label>
			<input type="checkbox" name="animals" id="animals03" value="Dog"/><label for="animals03">강아지</label>
			<input type="checkbox" name="animals" id="animals04" value="Bird"/><label for="animals04">새</label></li>
				
			<li>언어(단일선택):
			<select name="language" id="language">
				<option value="o">선택</option>		
				<option value="En">영어</option>		
				<option value="Kr">한국어</option>		
				<option value="Jp">일본어</option>		
				<option value="Cn">중국어</option>		
			</select>
			</li>
			
			<li>언어(다중선택):
			<select name="language01" id="language01" size="5" multiple="multiple">
				<option value="o">선택</option>		
				<option value="En">영어</option>		
				<option value="Kr">한국어</option>		
				<option value="Jp">일본어</option>		
				<option value="Cn">중국어</option>		
			</select>
			</li>
			
	
	     	<li>브라우저(input-datalist):
				<input list="browsers" name="browsers">
				<datalist id="browsers">
				<option value="Edge">
				<option value="Firefox">
				<option value="Chrome">
				<option value="Opera">
				<option value="Safari">
				</datalist>
			</li>

			
			<li>자기소개(textarea의 rows, cols 속성)<br/> 
				<textarea name="mySelf" id="mySelf" rows="5" cols="30">tx 기본값</textarea></li>
			<li>자기소개(textarea의 style 적용 style="css속성명:값;")<br/>
				<textarea name="mySelf01" id="mySelf01" style="height:80px; width:240px">tx 기본값</textarea></li>
		</ul>
	</form>
</body>
</html>