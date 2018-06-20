

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String UserName = request.getParameter("txtUser");
		String Password = request.getParameter("txtPassword");
		String ErrorMessage="";
		String dbUser ="";
		String dbPass="";
		String dbUserID="";
				
		String SelectQ = "SELECT * FROM customer_reg Where Email='"+UserName+"'";
		System.out.println(" Query : " +SelectQ);
		try
		{
			if (UserName !="" && UserName != null && Password !="" && Password !=null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell","root","");
				Statement state = con.createStatement();
				ResultSet  Result = state.executeQuery(SelectQ);
		//		Result.last();
				
				System.out.println("FOUND RECORD" +Result.getRow());
	//			if (Result.getRow()>0)
	//			{
					System.out.println("FOUND RECORD");
					Result.next();
					dbUser = Result.getString("Email");
					dbPass = Result.getString("Password");
					dbUserID = Result.getString("cust_id");
					
					System.out.println(dbUserID + " DB  " + dbUser +" DB " + dbPass);
					ErrorMessage = Result.getString("First_Name") + " " +Result.getString("Last_Name")  ;
					request.setAttribute("Message", ErrorMessage);
					request.getRequestDispatcher("info.jsp").forward(request, response);
	//			}
			}
		}catch (Exception e)
		{
			System.out.println("ERROR : "+ e);
		}
	}

}

