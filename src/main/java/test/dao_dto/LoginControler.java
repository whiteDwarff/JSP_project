package test.dao_dto;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


	/**
	 * Servlet implementation class HelloServlet
	 */
	@WebServlet("*.do")
	public class LoginControler extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			// Context : 프로젝트명
			// servlet : 요청처리 
			// response.getWriter().append("Served at: ").append(request.getContextPath());
			
			  request.setCharacterEncoding("utf-8");
			
			   String uri = request.getRequestURI();
			   System.out.println(uri);
			   String viewPage = null;
			   
			   String com = uri.substring(uri.lastIndexOf("/")+1,uri.indexOf(".do"));
			
			   
			   if(com.equals("list") && com != null) {
				   memberDao_ref dao = new memberDao_ref();
				   ArrayList<memberDto> dtos = dao.memberList(7);
				   request.setAttribute("dtos", dtos);
				   viewPage = "/0517_DAO_DTO/list.jsp";
			   } else if(com.equals("insertForm") && com != null) {
				   viewPage = "/0517_DAO_DTO/insertForm.jsp";
			   } else if(com.equals("insert") && com != null) {;
			   		String id = request.getParameter("id");
			   		String name = request.getParameter("name");
			   		String pwd = request.getParameter("pwd");
			  
			   		memberDto dto = new memberDto(id, name, pwd);
			   		memberDao dao = new memberDao();
			   		dao.joinDto(dto);
			   		// list.jsp는 db의 데이터를 가져오는 로직이 없다. 
			   		// if문에서 작성한 list 로직으로 이동해야함 
			   		viewPage = "/0517_DAO_DTO/list.do";
			   } else if(com.equals("index") && com != null) {
				   viewPage = "WEB-INF/view/index.jsp";
			   }
			   
			   
			   RequestDispatcher rd = request.getRequestDispatcher(viewPage);
			   rd.forward(request, response);
		}


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
		}

	}

	
	
	
	
	
