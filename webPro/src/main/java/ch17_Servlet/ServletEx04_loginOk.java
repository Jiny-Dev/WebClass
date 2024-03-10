package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//요청주소 http://ip:8081/loginProc
@WebServlet("/loginProc")
public class ServletEx04_loginOk extends HttpServlet {
	// 클래스를 구분하기위한 역할
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()호출");
	}

	public void destroy() {
		System.out.println("()호출");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet()호출");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String password = request.getParameter("password");

		out.println("<!DOCTYPE html>");
		out.println("<html><head><meta charset=\"UTF-8\"><title>로그인폼</title></head><body>");
		out.println("<h4>ServletEx04_loginForm.java   서블릿문서입니다</h4><body>");

		out.println("<div>*user가 입력한 id: " + id + "</div>");
		out.println("<div>*user가 입력한 pw: " + password + "</div>");

		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost(0호출");
		doGet(request, response);
	}

}