package example;
    
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
  1. class에 HttpSevelt extends 
  2. doGet() method Override
   - doGet() -> 자동완성 가능
 
*/

@WebServlet("/spag")
public class Spag extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = 0;
		String result; 
		String count = request.getParameter("n"); 
		
		if(count != null && !count.equals("")) {
			num = Integer.parseInt(count);
		}
		
		if(num % 2 != 0) result = "홀수";
		else result = "짝수";
		
		
		// request에 result를 저장, "result"는 model의 key, result는 변수
		request.setAttribute("result", result);
		
		// -------------------------------------------------
		String[] names = {"munho", "minjung"};
		request.setAttribute("names", names);
		// -------------------------------------------------
		Map<String, Object> notice = new HashMap<String, Object>();
		notice.put("id", 1);
		notice.put("title", "EL은 좋아요");
		request.setAttribute("notice", notice);
		
		// redirect : 현재 작업 여부와 상관없이 새로운 요청을 하는 경우 
		// forward  : 현재 작업한 내용을 이어갈 수 있다. 작업이 이어져야 하는 경우 
		
		// View로 Controller 전송
		// RequestDispatcher 객체는 요청을 전달할 jsp 페이지를 지정할 수 있다.
		RequestDispatcher dispatcher = request.getRequestDispatcher("example/mvc_pattern2.jsp");
		// forward 관계에서 사용되는 저장되는 저장소 : request
		// forward()를 통해 요청과 응답 객체를 전달함.
		dispatcher.forward(request, response);
		
		
	}
}
