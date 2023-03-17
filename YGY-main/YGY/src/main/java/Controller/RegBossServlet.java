package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RegDAO;
import VO.BossVO;

@WebServlet("/RegBossServlet")
public class RegBossServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private RegDAO dao = new RegDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String _tel = request.getParameter("tel");
		int tel = Integer.parseInt(_tel);
		
		BossVO vo = new BossVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setBossname(name);
		vo.setTel(tel);
		System.out.println(name);
		
		dao.bossInsert(vo);
		request.setAttribute("vo", vo);
		request.getRequestDispatcher("bosslogin.jsp").forward(request, response);
	}

}
