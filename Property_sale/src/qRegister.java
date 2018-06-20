

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class qRegister
 */
@WebServlet("/QuickRegister")
public class qRegister extends HttpServlet {
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
		String FirstName =	request.getParameter("txtFirstName");
		String LastName =	request.getParameter("txtLastname");
		String MobileNo =	request.getParameter("txtMobileno");
		String Email =	request.getParameter("txtemail");
		String Password =	request.getParameter("txtpassword");
		String mPassword =	request.getParameter("txtmpassword");
		String usrType =	request.getParameter("usrType");
		//Boolean Agree = Boolean.parseBoolean(request.getParameter("chkagree"));
		String ErrorDispatch="";
		String Agree = request.getParameter("chkagree");
		PrintWriter out = response.getWriter();
		//System.out.println("Agree " + Agree);
		try
		{
			if (FirstName!= null && FirstName !="" &&  LastName !="" && LastName!= null && MobileNo !="" &&  MobileNo!= null && Email !="" && Email!=null && Password!= null && Password !="" && mPassword!= null && mPassword !="" &&  usrType!="0" )
			{
				if(!Password.equals(mPassword))
				{ 
					request.setAttribute("ErrorMsg","Password Does Not Match");
					request.getRequestDispatcher("quickregister.jsp").forward(request, response);
				}else if(!Agree.equalsIgnoreCase("on"))
				{
					request.setAttribute("ErrorMsg","Accept Terms & Conditions to Register");
					request.getRequestDispatcher("quickregister.jsp").forward(request, response);
				}else
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell","root","");
					Statement state = con.createStatement();
					
					String SelectQ = "SELECT * FROM customer_reg Where Email='"+Email+"'" ;
					System.out.println("Query : "+SelectQ);
					ResultSet Result = state.executeQuery(SelectQ);
					Result.last();
					int r = Result.getRow();
					System.out.println("Rows in search = "+r);
					if (r > 1)
					{
						System.out.println("User Already Exist : ");
						System.out.println("User : " + Result.getString("Email"));
					}
					else
					{
					//	ResultSet  Result = state.executeQuery(arg0); 
						String InsertData = "Insert INTO customer_reg(First_Name ,Last_Name, Mobile_no, Email, Usertype, Password,agreed) Values (?,?,?,?,?,?,?)";
						
						PreparedStatement pState = con.prepareStatement(InsertData);
						
						pState.setString(1, FirstName);
						pState.setString(2, LastName);
						pState.setString(3, MobileNo);
						pState.setString(4, Email);
						pState.setString(5, usrType);
						pState.setString(6, Password);
						pState.setString(7, Agree);
						int Rows = pState.executeUpdate();
						if (Rows > 0)
						{
							System.out.println("Number of Rows " + Rows + " Inserted");
							if (usrType.equalsIgnoreCase("Individual"))
							{
								response.sendRedirect("index.jsp");
							}else if (usrType.equalsIgnoreCase("Agent"))
							{
								response.sendRedirect("prop.jsp");
							}else if (usrType.equalsIgnoreCase("Builders"))
							{
								response.sendRedirect("prop.jsp");
							}
						}
					}
				}
				
					
			}else
			{
				request.setAttribute("ErrorMsg","All Fields are Required");
				request.getRequestDispatcher("quickregister.jsp").forward(request, response);
			}
		}catch(Exception e)
		{
			System.out.println("ERROR : " + e);
		}
	}

}
