package chap07.webprocess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import chap07.dao.DBConnector;
import chap07.dto.EmployeeDTO;
import chap07.dto.SoccerplayerDTO;

public class DBTestWebProcess implements WebProcess{

	@Override
	public String process(HttpServletRequest request) {
		try(
				Connection conn = DBConnector.getConnection();
				PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM employees");
				ResultSet rs = pstmt.executeQuery();
			) {
				// DTO : 읽기/쓰기 가능
				// VO : 읽기 전용
				List<EmployeeDTO> employees = new ArrayList<>();
				
				while (rs.next()) {
					employees.add(new EmployeeDTO(
							rs.getInt("employee_id"), 
							rs.getString("first_name"), 
							rs.getString("last_name"),
							rs.getString("email"), 
							rs.getString("phone_number"), 
							rs.getDouble("salary"), 
							rs.getDouble("commission_pct"), 
							rs.getDate("hire_date"), 
							rs.getString("job_id"), 
							rs.getInt("manager_id"), 
							rs.getInt("department_id")));
				}
				
				// 처리 후 어트리뷰트에 데이터 적재
				request.setAttribute("employees", employees);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		return "/WEB-INF/views/dbtest/list.jsp";
	}
}
