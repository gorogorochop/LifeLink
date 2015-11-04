package servlet;

import java.sql.*;
import java.util.ArrayList;

import db.Report;

public class UserDataManager {
	private String dbURL = "jdbc:mysql://localhost/lifelink";
	private String dbuser = "root";
	private String dbpass = "toor";

	public void setDbUrl(String URL) {
		dbURL = URL;
	}

	public String getDbUrl() {
		return dbURL;
	}

	public void setDbUser(String user) {
		dbuser = user;
	}

	public String getDbUser() {
		return dbuser;
	}

	public void setDbPass(String pass) {
		dbpass = pass;
	}

	public String getDbPass () {
		return dbpass;
	}


	/**
	 * Function for opening connection to the database
	 */
	 public Connection getConnection() {

		 Connection conn = null;
		 try {
			 conn = DriverManager.getConnection(getDbUrl(),getDbUser(),getDbPass());   
		 } catch (SQLException e) {
			 e.printStackTrace();
		 }
		 return conn;
	 }

	 /**
	  * Function to close open connection to database
	  */
	 public void closeConnection(Connection conn) {
		 if(conn != null) {
			 try {
				 conn.close();
			 } catch (SQLException e) {
				 e.printStackTrace();
			 }
		 }
	 }

	 /**
	  * Obtain the list of all users
	  * Simple mode
	  */
	 public ArrayList<String> getUserListSimple() {
		 ArrayList<String> list = new ArrayList<>();
		 Connection conn = getConnection();

		 if(conn != null) {
			 ResultSet rs = null;
			 PreparedStatement ps = null;

			 try {
				 String sqlQuery = "select comments from reported_list";
				 ps = conn.prepareStatement(sqlQuery);
				 rs = ps.executeQuery();      

				 while(rs.next()) {   
					 list.add(rs.getString("comments"));
				 }   
			 } catch(SQLException e) {
				 e.printStackTrace();
			 }
			 finally {
				 try {
					 rs.close();
					 ps.close();
				 } catch (SQLException ex) {
					 ex.printStackTrace();
				 }
				 closeConnection(conn);   
			 }
		 }
		 return list;
	 }
}