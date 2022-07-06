package admincontroller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modalclass.*;
import adminDAO.*;


@WebServlet("/createadmincontroller")
public class createadmincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoAdmin dao;
       
    
    public createadmincontroller() {
        super();
     
        dao = new DaoAdmin();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		admin a = new admin();
		a.setAdd_name(request.getParameter("add_name"));
		a.setAdmin_icnum(request.getParameter("admin_icnum"));
		a.setAdd_age(Integer.parseInt(request.getParameter("add_age")));
		a.setAdd_phonenum(request.getParameter("add_phonenum"));
		a.setAdd_email(request.getParameter("add_email"));
		a.setAdd_password(request.getParameter("add_password"));
		a.setSupervisorid(Integer.parseInt(request.getParameter("supervisorid")));
		
		
		dao.addAdmin(a); //invoke method addmember() in memberDAO
		
		request.setAttribute("admin", DaoAdmin.getAllAdmin());
		RequestDispatcher view = request.getRequestDispatcher("adminlist.jsp");
		view.forward(request, response);
		
		
	}

}
