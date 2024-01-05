package chap03.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forward/test/*")
public class ForwardTestServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 하나의 서블릿에서 URI를 통해 여러 종류의 요청을 처리하는것도 가능하다
		System.out.println(req.getRequestURI());
		String uri = req.getRequestURI();
		System.out.println("uri: " + uri);

		System.out.println(req.getParameter("firstName"));
		System.out.println(req.getParameter("lastName"));

		// 다른 서블릿으로 포워딩(경로는 webapp 밑의 경로를 사용)
		if (uri.equals("/chap03/forward/test/1")) {
			// RequestDispatcher : 요청을 분배해 줄 수 있는 객체
			RequestDispatcher dispatcher = req.getRequestDispatcher("/forward/page1.jsp");
			dispatcher.forward(req, resp); // 응답을 마무리 하지 않고 다음페이지에서 처리를 이어나감
			// resp에 page1의 내용을 추가
		}else if(uri.equals("/chap03/forward/test/2")) {
			//지금 요청을 보냈던 클라이언트에게 이 주소로 다시 요청하라고 응답
			//(경로는 클라이언트 입장에서의 URL경로를 사용)
			//주소뒤에 Get방식 파라미터를 추가하는 것은 가능하지만
			//POST 방식으로 파라미터를 추가하는것은 불가능 하다 
			
			resp.sendRedirect("/chap03/forward/page1.jsp");
		}
	}

}
