package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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

	DbManager dbm = DbManager.getInstance();
	ArrayList<Report> result = new ArrayList<>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		doGet(request, response);
		PrintWriter out = response.getWriter();
		result = dbm.queryAllReport();
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
	}
}