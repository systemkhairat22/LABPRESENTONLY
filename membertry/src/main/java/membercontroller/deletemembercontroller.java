package membercontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import memberDAO.*;


@WebServlet("/deletemembercontroller")
public class deletemembercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoMember dao;
       
    
    public deletemembercontroller() {
        super();
      dao = new DaoMember();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int id = Integer.parseInt(request.getParameter("memberid"));
		dao.deletemember(id);
		request.setAttribute("member", DaoMember.getAllMember());
		RequestDispatcher view = request.getRequestDispatcher("memberlist.jsp");
		view.forward(request, response);
	}



}
