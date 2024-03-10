package ch17_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletEx03")
public class ServletEx03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletEx03() {
        super();
        System.out.println("ServletEx03()의 기본 생성자 호출");
    }
    
    //HttpServlet의 부모 클래스인 GenericServlet 클래스에 있는 메서드
    //Called by the servlet container to indicate to a servlet that the servlet is being taken out of service.
    @Override
	public void destroy() { //서버를 내리거나 서블릿 동작이 안될 때 호출하여 수습
		super.destroy();
		System.out.println("destroy() 호출: 서블릿이 소멸되면서 해야할 작업이 있다면...");
	}

    //HttpServlet의 부모 클래스인 GenericServlet 클래스에 있는 메서드
    //A convenience method which can be overridden so that there's no need to call super.init(config).
	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("init() 호출: 환경설정과 같은 필요한 작업 수행");
	}

	//get 방식 요청시 자동 호출되는 서비스 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() 호출");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//위를 아래와 같이 작성할 수 있다. 다만 변수가 1회성이 되기 때문에 위처럼 사용한다.
		PrintWriter out = response.getWriter();
		out=out.append("Served at: ");
		String cp =request.getContextPath();
		out.append(cp);
	}
	
	//post 방식 요청시 자동 호출되는 서비스 메서드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 호출");
		doGet(request, response);
	}

}
