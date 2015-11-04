package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DbManager;
import db.Report;

/**
 * Servlet implementation class ManagerServlet
 */
@WebServlet("/Manager")
public class ManagerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	//private DbManager dbm;
	private ArrayList<Report> result;
	private UserDataManager userDataMan;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init();
		
		userDataMan = new UserDataManager();
	    userDataMan.setDbUrl(config.getInitParameter("jdbc:mysql://localhost/lifelink"));
	    userDataMan.setDbUser(config.getInitParameter("root"));
	    userDataMan.setDbPass(config.getInitParameter("toor"));
		
	    try {
	         Class.forName(config.getInitParameter("com.mysql.jdbc.Driver"));
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	    
		//dbm = DbManager.getInstance();
		//result = new ArrayList<>();
	}
	
	
	
	public ManagerServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		ArrayList<String> slist = new ArrayList<String>(
		         userDataMan.getUserListSimple());
		
		out.println("<html>");
	      out.println("<head>");
	      out.println("<title> Welcome from a servlet</title>");
	      out.println("</head>");
	      out.println("<body>");
	      for (String data : slist) {
	         out.println("<h1>" + data + "</h1>");
	      }
	      out.println("<a href=\"index.html\">"
	            + "Click here to go back to index page " + "</a>");
	      out.println("</body>");
	      out.println("</html>");
	      out.close();
		/*
		//result = dbm.queryAllReport();
		out.println("<HTML><HEAD><TITLE>HelloServlet</TITLE></HEAD>");
		out.println("<BODY>");

		for(int i = 1; i <= result.size(); i++){
			out.println("<tr id = " + i + ">");      
			out.println("<td>"+result.get(i).getId()+"</td>");
			out.println("<td>"+result.get(i).getContents()+"</td>");
			out.println("<td>"+result.get(i).getOpinion()+"</td>");
			out.println("</tr>");    

		}
		out.println("</BODY></HTML>");
		*/
	}
}