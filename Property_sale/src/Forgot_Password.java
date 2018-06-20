

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import  java.util.Properties;                                                                                                    
import  javax.mail.Session;                                                                                                      
import  javax.mail.Authenticator;                                                                                                
import  javax.mail.PasswordAuthentication;                                                                                       
import  javax.mail.Message;                                                                                                      
import  javax.mail.internet.MimeMessage;                                                                                         
import  javax.mail.internet.InternetAddress;                                                                                     
import  javax.mail.Transport;
/**
 * Servlet implementation class Forgot_Password
 */
@WebServlet("/forgot")
public class Forgot_Password extends HttpServlet {
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
		String UserName = request.getParameter("user_mail");
		String ErrorMessage="";
		String dbUser ="";
		String dbPass="";

		String SelectQ = "SELECT * FROM customer_reg Where Email='"+UserName+"'";
		System.out.println(" Query : " +SelectQ);
		try
		{
			if (UserName !="" && UserName != null)
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
					if (dbUser.equals(UserName))
					{
					//------------------
						
						String smtpServer = "webmail.gyanlabs.in";                                                                                                                
						String smtpPort = "25";                                                                                                                     
						final String authAddress = 	"students@gyanlabs.in";	                                                                                
						final String authPassword = "Va?7pTe.B#3";			                                                                             
						String email = dbUser;                                                                                                                        
						String mInfo = "";
						String FinalMessage = "Dear User! <br> As per your Request Please Find your Lost Password as below <br> "+ dbPass; // 
						String subject = "Find your Password ";
						String send = request.getParameter("send");                                                                                                 
						String siteName=request.getServerName();                                                                                                    
						siteName=siteName.replaceAll("www.","");                                                                                                    

//						if(send!=null){						           

						        try{                                             
						                Properties props = new Properties();     
						                props.put("mail.smtp.host", smtpServer); 
						                props.put("mail.smtp.port", smtpPort);   
						            	props.put("mail.smtp.auth", "true");         
						                                                         
						            // create some properties and get the default Session
						            Session sessionMail = Session.getInstance(props, new Authenticator() {
						                 public PasswordAuthentication getPasswordAuthentication() {      
						                         return new PasswordAuthentication(authAddress, authPassword);
						                 }                                                                    
						                });                                                                   
						                                                                                      
						      //      sessionMail.setDebug(true);

						            // create a message
						            Message msg = new MimeMessage(sessionMail);

						            // set the from and to address
						            InternetAddress addressFrom = new InternetAddress(authAddress);
						            msg.setFrom(addressFrom);

						            InternetAddress[] addressTo = new InternetAddress[1];
						            addressTo[0] = new InternetAddress(email);
						            msg.setRecipients(Message.RecipientType.TO, addressTo);


						            // Optional : You can also set your custom headers in the Email if you Want
						            msg.addHeader("site", siteName);

						            // Setting the Subject and Content Type
						            msg.setSubject(subject);
						            msg.setContent(FinalMessage, "text/html");
						            Transport.send(msg);
						            mInfo = "Message Sent Successfully";
						        }catch(Exception e){
						                e.printStackTrace(response.getWriter());
						        }
						}
	
					//-------------
						
					
	//				}

	//			}
			}
		}catch (Exception e)
		{
			System.out.println("ERROR : "+ e);
		}

	}

}
