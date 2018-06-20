<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>                                                                                                     
<%@page import="javax.mail.Session"%>                                                                                                       
<%@page import="javax.mail.Authenticator"%>                                                                                                 
<%@page import="javax.mail.PasswordAuthentication"%>                                                                                        
<%@page import="javax.mail.Message"%>                                                                                                       
<%@page import="javax.mail.internet.MimeMessage"%>                                                                                          
<%@page import="javax.mail.internet.InternetAddress"%>                                                                                      
<%@page import="javax.mail.Transport"%>  

<%                                                                                                                                          
String smtpServer = "webmail.gyanlabs.in";                                                                                                                
String smtpPort = "25";                                                                                                                     
final String authAddress = 	"students@gyanlabs.in";	                                                                                
final String authPassword = "Va?7pTe.B#3";			                                                                             
String subject = request.getParameter("txtSubject");  ;                                                                                                                      
String email = "sharmautkarsh96@gmail.com";                                                                                                                        
String message = request.getParameter("txtMessage");;  
String mInfo = "";
String Name = request.getParameter("Name"); ;
String Mobile = request.getParameter("Mobile"); ;
String uMail = request.getParameter("email"); 
String UserType = request.getParameter("cboUserType");

String FinalMessage = null; // 

String send = request.getParameter("send");                                                                                                 
String siteName=request.getServerName();                                                                                                    
siteName=siteName.replaceAll("www.","");                                                                                                    

if(send!=null){						           

        FinalMessage ="<Strong> Name : </Strong> "+ Name + "<br><Strong>Mobile Number :  </Strong>" + Mobile+ "<br><Strong>E-Mail ID : </Strong>" + uMail + "<br><Strong>User Type : </Strong>"+UserType +"<br><Strong>Subject: </Strong>" +subject+"<br><Strong>Message</Strong><br>"+ message;
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
                                                                                      
         //   sessionMail.setDebug(true);

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
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">                                      
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Material-Card.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form-1.css">
    <link rel="stylesheet" href="assets/css/Pretty-Header.css">
    <link rel="stylesheet" href="assets/css/Mockup-MacBook-Pro.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
    <link rel="stylesheet" href="assets/css/untitled-1.css">
    <link rel="stylesheet" href="assets/css/untitled-2.css">
</head>

<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">UTKARSH INFRATECH</a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active" role="presentation"><a href="index.jsp">HOME </a></li>
                        <li role="presentation"><a href="aboutus.jsp">ABOUT US</a></li>
                        <li role="presentation"><a href="#">PROPERTY SELL</a></li>
                        <li role="presentation"><a href="contactus.jsp">CONTACT US</a></li>
                        <li role="presentation"><a href="login.jsp">LOGIN /SIGN UP</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="clearfix"></div>
        <div></div>
    </header>
    <h1 class="text-center">Contact Us</h1>
    <div class="container">
        <div class="col-md-6">
            <h4>Head Office</h4>
            <p>202/45 Block - A <br> Swaraj Nagar , Panki <br> Kanpur </p>
        </div>
        <div class="col-md-6">
            <form class="bootstrap-form-with-validation" method="post" action ="contactusform.jsp">
               <h4><span><%=mInfo %></span></h4>
                <div class="form-group">
                    <label class="control-label" for="text-input">Name </label>
                    <input class="form-control input-lg" type="text" name="Name" required="" placeholder="Name" id="text-input">
                </div>
                <div class="form-group">
                    <label class="control-label" for="email-input">Emaill</label>
                    <input class="form-control input-lg" type="email" name="email" required="" placeholder="E-Mail" id="email">
                </div>
                <div class="form-group">
                    <label class="control-label" for="email-input">Mobile Number</label>
                    <input class="form-control input-lg" type="text" name="Mobile" required="" placeholder="Mobile Number" maxlength="10" minlength="10" id="Mobile">
                </div>
                <div class="form-group">
                    <label class="control-label" for="email-input">Subject</label>
                    <input class="form-control input-lg" type="text" name="txtSubject" required="" placeholder="Subject" id="txtSubject">
                </div>
                <div class="form-group">
                    <label class="control-label" for="email-input">User Type</label>
                    <select class="form-control input-lg" name="cboUserType" required>
                        <option value="0" selected="">Select One</option>
                        <option value="Individual">General User</option>
                        <option value="Agent">Broker/Agent</option>
                        <option value="Builder">Builder/Owner</option>
                    </select>
                </div>
                <div class="form-group">
                    <label class="control-label" for="textarea-input">Message </label>
                    <textarea class="form-control input-lg" rows="20" cols="8" name="txtMessage" id="textarea-input"></textarea>
                </div>
                <div class="form-group">
                    <button class="btn btn-success active btn-lg" type="submit" name="send">Send Mail</button>
                </div>
            </form>
        </div>
    </div>
    <footer>
        <p class="lead text-center text-warning">ALL THE LIABILITIES ARE SUBJECT TO MARKET PRICE. T &amp; C APPLY</p>
        <h5>UTKARSH INFRATECH © 2017 </h5></footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>