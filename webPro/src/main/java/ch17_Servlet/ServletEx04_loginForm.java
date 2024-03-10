package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//요청주소 http://ip:8081/ContextPath
@WebServlet("/ServletEx04_loginForm")
public class ServletEx04_loginForm extends HttpServlet {
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
		out.println("<!DOCTYPE html>");
		out.println("<html><head><meta charset=\"UTF-8\"><title>로그인폼</title></head><body>");
		out.println("<h4>ServletEx04_loginForm.java   서블릿문서입니다</h4>");
		out.println("<form name=\"loginFrm\" id=\"loginFrm\" action=\"loginProc\" \r\nmethod=\"post\">");
		out.println("<div>*아이디: <input type=\"text\" name=\"id\"  id=\"id\"/> </div>");
		out.println("<div>*비밀번호: <input type=\"password\" name=\"password\"  id=\"password\"/> </div>");
		out.println("<div>");
		out.println("<input type=\"submit\" value=\"로그인\"/>	<input type=\"reset\" value=\"취소\"/>");
		out.println("</div>");
		out.println("</form>");
		out.println("</body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost(0호출");
		doGet(request, response);
	}

}