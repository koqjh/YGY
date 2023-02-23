package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import DAO.MenuDAO;
import VO.TypeVO;

@WebServlet("/MenuListServlet")
public class MenuListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private MenuDAO dao = new MenuDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		
		String type = request.getParameter("type");
		List<TypeVO> Tlist = dao.list(type);
		JSONArray Tobj = new JSONArray(Tlist);
		
		System.out.println(Tobj);
		
		PrintWriter out = response.getWriter();
		out.print(Tobj);
	}

}