package test.dao_dto;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("*.test")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Context : 프로젝트명
		// servlet : 요청처리 
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		   response.setContentType("text/html; charset=UTF-8");
		   PrintWriter out = response.getWriter();
		   out.println("<html><head><title>반갑습니다.</title></head>");
		   out.println("<h1>반갑습니다</h1></html>");
		   out.println(request);
		   out.println("<br>");
		   out.println(response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
