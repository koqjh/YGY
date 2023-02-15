package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.RegDAO;
import VO.PersonVO;

@WebServlet("/IdCheckServlet")
public class IdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ArrayList<PersonVO> list = new ArrayList<>();
		String id = request.getParameter("id");
		
		RegDAO lo = new RegDAO();
		
		int result = lo.idcheck(id);
		
		if(result == 1) {
			System.out.println("나오는것이여");
			HttpSession session = request.getSession(false);
			session.setAttribute("id", id);
			response.sendRedirect("registpop.jsp");
		}else {
			request.setAttribute("bed", "뭐시 하나가 틀맀으");
			request.getRequestDispatcher("registpop.jsp").forward(request, response);
		}
		
		
		
		
	}

}
