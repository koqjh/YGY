package Controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DAO.MenuDAO;
import VO.TypeVO;

@WebServlet("/RegTypeServlet")
public class RegTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private MenuDAO dao = new MenuDAO();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String savePath = "upload";
		ServletContext ctx = getServletContext();
		String uploadFilePath = ctx.getRealPath(savePath);
		
		int FileMaxsize = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, uploadFilePath, FileMaxsize, encType, new DefaultFileRenamePolicy());		
		
		String type = multi.getParameter("type");
		String companyname = multi.getParameter("companyname");
		String area = multi.getParameter("area");
		String logo = multi.getFilesystemName("logo");
		System.out.println(logo);
		String bossname = multi.getParameter("bossname");
		String companytel = multi.getParameter("companytel");
		String businesslicense = multi.getParameter("businesslicense");
		String menu = multi.getParameter("menu");
		String review = multi.getParameter("review");
		String information = multi.getParameter("information");
		
		TypeVO vo = new TypeVO();
		vo.setType(type);
		vo.setCompanyname(companyname);
		vo.setArea(area);
		vo.setLogo(logo);
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
