<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="student.StudentDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 목록</title>
</head>
<body>
	<h3>학생목록(studentList.jsp)</h3>
	<h4>with StudentDTO</h4>
	<hr/>
	http://localhost:8081/webPro/cf/studentList.jsp
	<hr/>
	<%
	System.out.println("=List에 StudentDTO객체 추가===");
	List<StudentDTO> list = new ArrayList<StudentDTO>();
	StudentDTO s1 = new StudentDTO("0012345","홍GD",new Date());
	list.add(s1);
	list.add(new StudentDTO("0012346","세종대왕",new Date()));
	list.add(new StudentDTO("0012347","이순신",new Date()));
	
	System.out.println("\r\n=Set에 StudentDTO객체 추가===");
	Set<StudentDTO> set = new HashSet<StudentDTO>();
	StudentDTO sDto1 = new StudentDTO();
	sDto1.setStuNo("0022225");
	sDto1.setStuName("진1");
	sDto1.setEnrollmentDate(new Date());
	set.add(sDto1);
	
	StudentDTO sDto2 = new StudentDTO();
	sDto2.setStuNo("0022226");
	sDto2.setStuName("진2");
	sDto2.setEnrollmentDate(new Date());
	set.add(sDto2);
	
	StudentDTO sDto3 = new StudentDTO();
	sDto3.setStuNo("0022227");
	sDto3.setStuName("진3");
	sDto3.setEnrollmentDate(new Date());
	set.add(sDto3);
	
	
	Map<String, StudentDTO > map01 = new HashMap<String, StudentDTO>();
	map01.put("1", new StudentDTO("333", "고라니",  new Date() ));
	
	StudentDTO sDto= new StudentDTO();
	sDto.setStuNo("00123456");
	sDto.setStuName("고고라니");
	sDto.setEnrollmentDate(new Date());
	map01.put("2", sDto);
	
	map01.put("3", sDto); // map의 value는 중복 가능
	
	//브라우저 출력
	out.println("<h4>List에 저장된 학생 목록 출력</h4> ");
	
	for(int i=0;i<list.size() ;i++) {
		StudentDTO studentDto= list.get(i);
		out.println(studentDto+"<br/>");
	}
	
	out.println("<hr/><h4>Set에 저장된 학생 목록 출력</h4> ");
	for(StudentDTO studentDto:set) {
		out.println(studentDto+"<br/>");
	}
	
	out.println("<hr/><h4>Map에 저장된 학생 목록 출력</h4> ");
	Set<String> keys = map01.keySet();
	Iterator<String> keysIterator = keys.iterator();
	while(keysIterator.hasNext()) {
		String key = keysIterator.next();
		StudentDTO value = map01.get(key);
		out.println(key + value+"<br/>");
	}
	
	%>
</body>
</html>