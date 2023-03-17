package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.RegDAO;

@WebServlet("/BossLoginServlet")
public class BossLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		RegDAO lo = new RegDAO();
		
		int result = lo.login(id, pw);
		
		System.out.println(result);
		
		if(result == 1 ) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("bossmain.jsp");
		}
	}

}
