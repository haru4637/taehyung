package chap04.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/quiz2/register")
public class RegisterServlet  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//서블릿에서 application 영역 사용하기
		//req.getServletContext();
		ServletContext application = req.getServletContext();
		
		//서블릿에서 session영역 사용하기
		//req.getSession();
		//서블릿에서는 page를 쓸 수 없다 (jsp 영역에 있기 때문에)
		
		
		
		
		//파라미터는 무조건 String 으로 반환된다 (웹에서 만들어져 오는 값이므로) 
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		// 파라미터의 값이 빈 값인지 검증할 떄 null 뿐만 아니라 빈 문자도 체크해야한다 
		if(id==null||pwd==null || id.equals("")||pwd.equals("")) {
			resp.sendRedirect("/chap04/quiz2/index.jsp?error=1");
			return;
		}
		
		
		//ID가 이미 있는지 체크
		
		// application.setAttribute(id, pwd); id값이 계속 attribute에 등록되긴 한다
		if(application.getAttribute(id)!=null) {
			resp.sendRedirect("/chap04/quiz2/index.jsp?error=1&dup=1");
			return;
		}
		
		//비밀번호 정규표현식으로 검증..? (나중에 해보기)
		
		//아이디 application 객체에 등록(원래는 DB에 넣어야한다)
		Map<String, Object> infoMap = new HashMap<>();
				infoMap.put("pwd", pwd);
				application.setAttribute(id, infoMap);
		
		resp.sendRedirect("/chap04/quiz2/index.jsp");
		
	}
}
