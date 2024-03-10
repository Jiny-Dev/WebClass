package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Web.xml로 매핑하기(p501)

public class ServletEx3 extends HttpServlet {
	//요청주소 http://localhost:8081/webPro/myInfo

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8"); //요청정보를 전송할때 문자의 인코딩해라 
		resp.setContentType("text/html; charset=utf-8"); //문자를 html로 utf-8로 응답한다. 
		
		//나의 정보
		PrintWriter outPut = resp.getWriter();
		
		outPut.println("<html>");
		outPut.println("<head>");
		outPut.println("<title>나의 정보</title>");
		outPut.println("</head>");
		outPut.println("<body>");
		outPut.println("<hr/><hr/>");
		outPut.println("<h2>나의 정보</h2>");
		outPut.println("<hr/><hr/><br/>");
		outPut.println("<ul>");
		outPut.println("<h4><li>이름: 최원진</li></h4>");
		outPut.println("<br/>");
		outPut.println("<h4><li>좋아하는 색: Black</li></h4>");
		outPut.println("<br/>");
		outPut.println("<h4><li>거주 도시: 서해 바다 앞</li></h4>");
		outPut.println("</ul>");
		outPut.println("<br/><hr/>");
		outPut.println("</body>");
		outPut.println("</html>");
		
	}
	
	
}
