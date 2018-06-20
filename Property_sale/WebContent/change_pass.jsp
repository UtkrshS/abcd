<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.ServletException" %>
<%@ page import ="javax.servlet.annotation.WebServlet" %>
<%@ page import ="javax.servlet.http.HttpServlet" %>
<%@ page import ="javax.servlet.http.HttpServletRequest" %>
<%@ page import ="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOMEPAGE1</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/Material-Card.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form-1.css">
    <link rel="stylesheet" href="assets/css/Pretty-Header.css">
    <link rel="stylesheet" href="assets/css/Mockup-MacBook-Pro.css">
    <link rel="stylesheet" href="assets/css/Style.css">
</head>
<%
	Integer UserID = 6; //From Session
	String ErrorMessage="";
	Integer dbUserID =0;
	String dbPass="";
	String CurrentPassword = request.getParameter("OldPass");
	String NewPassword = request.getParameter("newpassword");
	String NewPasswordConf = request.getParameter("ConfPassword");
	
			
	String SelectQ = "SELECT * FROM customer_reg Where cust_id="+UserID;
//	System.out.println(" Query : " +SelectQ);
	try
	{
		if ( CurrentPassword!="" && CurrentPassword != null && NewPassword !="" && NewPassword !=null && NewPasswordConf !="" && NewPasswordConf !=null)
		{

            Class.forName("com.mysql.jdbc.Driver");
			Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell","root","");
			Statement state = con.createStatement();
			ResultSet  Result = state.executeQuery(SelectQ);
			//			if (Result.getRow()>0)
			//			{
							System.out.println("FOUND RECORD");
							Result.next();
						//	dbUserID = Integer.parseInt(Result.getString("cust_id"));
							dbPass = Result.getString("Password");
							
							System.out.println(dbUserID + " DB  " + dbPass);
						//OK HERE }
			if(dbPass.equals(CurrentPassword))
			{ 
				if ( NewPassword.equals(NewPasswordConf))
				{
					String UpdateData = "Update customer_reg SET Password = ?  Where cust_id= ?";
					System.out.println(" UPDATE "+UpdateData);
					PreparedStatement pState = con.prepareStatement(UpdateData);
					pState.setString(1,NewPassword);
					pState.setInt(2,UserID);
					int Rows = pState.executeUpdate();
					System.out.println(" EXE UP ");
			//		if (Rows > 0)
			//		{
						System.out.println("Number of Rows " + Rows + " Updated");
			//	    }  
				
			     }
		
		   }else
		{
			ErrorMessage="All Fields are Required";
		}
	}
	}catch(Exception e)
	{
		
	}finally
	{
		
	}

%>
<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">UTKARSH INFRATECH<i class="glyphicon glyphicon-send"></i></a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active" role="presentation"><a href="#">HOME </a></li>
                        <li role="presentation"><a>ABOUT US</a></li>
                        <li role="presentation"><a href="#">PROPERTY SELL</a></li>
                        <li role="presentation"><a href="#">CONTACT US</a></li>
                        <li role="presentation"><a href="#">LOGIN /SIGN UP</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="clearfix"></div>
    </header>
    <h2 class="text-center text-primary bg-primary">WELCOME </h2>
    <h3 class="text-info"><i class="glyphicon glyphicon-phone-alt"></i> 1800-104-9882 </h3>
    <div class="container">
        <div class="col-md-4">
            <ul class="nav nav-pills nav-stacked">
                <li><a class="text-warning" href="#"> PROFILE <i class="glyphicon glyphicon-user"></i></a></li>
                <li><a class="text-warning" href="#">CHANGE PASSWORD <i class="glyphicon glyphicon-pencil"></i></a></li>
                <li><a class="text-warning" href="#">ADD PROPERTY <i class="glyphicon glyphicon-upload"></i></a></li>
                <li><a class="text-warning" href="#">MODIFY PROPERTY <i class="glyphicon glyphicon-edit"></i></a></li>
                <li><a class="text-warning" href="#">DELETE PROPERTY <i class="glyphicon glyphicon-trash"></i></a></li>
                <li><a class="text-warning" href="#">CHECK STATUS <i class="glyphicon glyphicon-check"></i></a></li>
                <li><a class="text-success" href="#">LOG OUT <i class="glyphicon glyphicon-off"></i></a></li>
            </ul>
        </div>
        <div class="col-md-8">
            <form class="bootstrap-form-with-validation">
                <h3 class="text-center">Change Password</h3>
                <div class="form-group">
                    <span><%=ErrorMessage %></span>
                    <label class="control-label" for="text-input">Current Password</label>
                    <input class="form-control input-lg" type="password" name="OldPass" required="" id="text-input">
                </div>
                <div class="form-group">
                    <label class="control-label" for="password-input">New Password </label>
                    <input class="form-control input-lg" type="password" name="newpassword" id="password-input">
                </div>
                <div class="form-group">
                    <label class="control-label" for="ConfPassword">Confirm Password </label>
                    <input class="form-control input-lg" type="password" name="ConfPassword" id="password-input">
                </div>
                <div class="form-group">
                    <button class="btn btn-primary active btn-lg" type="submit">Button</button>
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