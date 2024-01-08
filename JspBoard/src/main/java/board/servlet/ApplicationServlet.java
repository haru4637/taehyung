package board.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardListService;
import board.service.BoardWriteFormService;
import board.service.*; //서비스에 있는 모든걸 참조하겠다

public class ApplicationServlet extends HttpServlet {
   
   static Map<String, Service> uriMapping = new HashMap<>();
   static String REDIRECT_PREFIX = "redirect::";
   static int REDIRECT_PREFIX_LEN = REDIRECT_PREFIX.length();
   
   @Override
   public void init() throws ServletException {
	   uriMapping.put("GET:/", BoardListService.getInstance());
	   uriMapping.put("GET:/list", BoardListService.getInstance());  //new BoardListService 이걸 두 개 해줄 필요가 없다
	   uriMapping.put("GET:/write", new BoardWriteFormService());
	   uriMapping.put("POST:/write",  BoardWriteService.getInstance());
	   uriMapping.put("GET:/detail",  new BoardDetailService());
   }
   
   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) 
         throws ServletException, IOException {
      req.setCharacterEncoding("EUC-KR");
      String cmd =req.getMethod() + ":" + req.getRequestURI().substring(req.getContextPath().length());
      System.out.println(cmd);
      String nextView = uriMapping.get(cmd).service(req, resp);
   
      System.out.println("nextView: " + nextView);
      if(nextView.startsWith(REDIRECT_PREFIX)) {
    	  String nextView2 = nextView.substring(REDIRECT_PREFIX_LEN);
    	  System.out.println("nextView2: " + nextView2);
         resp.sendRedirect(req.getContextPath() + nextView2);
      } else {
         req.getRequestDispatcher(nextView).forward(req, resp);
         
      }
   }

   
}