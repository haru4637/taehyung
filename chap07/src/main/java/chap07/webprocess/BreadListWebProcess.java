package chap07.webprocess;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.BreadDao;
import chap07.dao.DBConnector;

public class BreadListWebProcess implements WebProcess{
	BreadDao breadDao = new BreadDao();
	
	@Override
	public String process(HttpServletRequest request) {
		request.setAttribute("breads", breadDao.getAll());
		return "/WEB-INF/views/bread/list.jsp";
	}

}
