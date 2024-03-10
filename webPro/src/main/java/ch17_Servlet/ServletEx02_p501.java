package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//***얘는 jsp가 아닌 class이므로 객체를 만들어야 한다.
//서블릿(p498~)
//p500 예제 - 브라우저에 현재 시간을 출력하는 웹문서

//Web.xml로 매핑하기(p501)
//요청주소 http://localhost:8081/webPro/now

//@WebServlet(urlPatterns = "/now") 없이 해보자
public class ServletEx02_p501 extends HttpServlet { //이미 정해져 있는 것을 @Override를 통해 날먹

	// get방식 요청 시 호출되는 메소드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("doGet()호출"); // 콘솔출력

		// <%@ page language="java" contentType="text/html;
		// charset=UTF-8"pageEncoding="UTF-8"%>
		req.setCharacterEncoding("utf-8"); // 요구
		resp.setContentType("text/html; charset=UTF-8");// 응답 //html로 utf-8로 인코딩 해주쇼

		// 브라우저에 현재 시간을 출력
		PrintWriter out = resp.getWriter();

		out.println("<html>");
		out.println("<head><title>servlet page</title></head>");
		out.println("<body>");
		out.println("<h2>Web.xml로 매핑하기</h2>");
		out.println("<h3>현재시간</h3>");
		out.println("<h4>" + new Date() + "</h4>");
		out.println("<h4>" + Calendar.getInstance() + "</h4>");

		Calendar cal = Calendar.getInstance();
		long millis = cal.getTimeInMillis();
		Date today = new Date(millis);
		out.println("<h4>Calendar를 이용하여 생성한 Date 객체: " + today + "</h4>");

		out.println("</body>");
		out.println("</html>");
	}

}