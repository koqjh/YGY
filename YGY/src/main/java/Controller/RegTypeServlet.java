package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MenuDAO;
import VO.TypeVO;

@WebServlet("/RegTypeServlet")
public class RegTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private MenuDAO dao = new MenuDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String type = request.getParameter("type");
		String companyname = request.getParameter("companyname");
		String area = request.getParameter("area");
		String bossname = request.getParameter("bossname");
		String companytel = request.getParameter("companytel");
		String businesslicense = request.getParameter("businesslicense");
		String menu = request.getParameter("menu");
		String review = request.getParameter("review");
		String information = request.getParameter("information");
		
		TypeVO vo = new TypeVO();
		vo.setType(type);
		vo.setCompanyname(companyname);
		vo.setArea(area);
		vo.setBossname(bossname);
		vo.setCompanytel(companytel);
		vo.setBusinesslicense(businesslicense);
		vo.setMenu(menu);
		vo.setReview(review);
		vo.setInformation(information);		
		
		dao.InsertType(vo);
		request.setAttribute("vo", vo);
		request.getRequestDispatcher("regcompany.jsp").forward(request, response);
		
	}

}
