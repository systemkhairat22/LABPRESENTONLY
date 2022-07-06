package admincontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import adminDAO.*;

@WebServlet("/deleteadmincontroller")
public class deleteadmincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoAdmin dao;
       
    public deleteadmincontroller() {
        super();
       dao = new DaoAdmin();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("adminid"));
		dao.deleteadmin(id);
		request.setAttribute("admin", DaoAdmin.getAllAdmin());
		RequestDispatcher view = request.getRequestDispatcher("adminlist.jsp");
		view.forward(request, response);
	}


}
