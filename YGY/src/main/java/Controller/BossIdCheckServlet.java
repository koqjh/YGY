package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RegDAO;

@WebServlet("/BossIdCheckServlet")
public class BossIdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		
		RegDAO lo = new RegDAO();
		
		int result = lo.bossidcheck(id);
		
		
		System.out.println(result);
		
		PrintWriter out = response.getWriter();
		
		String msg = null;
		
		if(result == 0) {
			msg = "사용 가능합니다";
		}else {
			msg = "사용 중입니다";
		}
		out.print(msg);
	}

}
