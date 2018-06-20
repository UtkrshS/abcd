<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<%
	Integer UserID = 6; //From Session
	String ErrorMessage = "";
	Integer dbUserID = 0;
	String dbFirstName = "";
	String dbLastName = "";
	String dbEmail = "";
	String dbMobile = "";

	String FirstName = request.getParameter("txtFirstName");
	String LastName = request.getParameter("txtLastName");
	String Mobile = request.getParameter("txtMobileno");
	String email = "";

	String SelectQ = "SELECT * FROM customer_reg Where cust_id=" + UserID;
	System.out.println(" Query : " +SelectQ + " FirstName " + FirstName + "LastName" + LastName + " Mobile " + Mobile );
	try {
	//	if (FirstName != null && FirstName != "" && LastName != null && LastName != "" && Mobile != null
	//			&& Mobile != "") {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell", "root", "");
			Statement state = con.createStatement();
			ResultSet Result = state.executeQuery(SelectQ);
			//			if (Result.getRow()>0)
			//			{
			System.out.println("FOUND RECORD");
			Result.next();
			//	dbUserID = Integer.parseInt(Result.getString("cust_id"));
			dbFirstName = Result.getString("First_Name");
			dbLastName = Result.getString("Last_Name");
			dbMobile = Result.getString("Mobile_no");
			dbEmail = Result.getString("Email");

			String UpdateData = "Update customer_reg SET First_Name = ?, Last_Name= ?, Mobile_no=? Where cust_id= ?";
			System.out.println(" UPDATE " + UpdateData);
			PreparedStatement pState = con.prepareStatement(UpdateData);
			pState.setString(1, FirstName);
			pState.setString(2, LastName);
			pState.setString(3, Mobile);
			pState.setInt(4, UserID);
			int Rows = pState.executeUpdate();
			System.out.println(" EXE UP " );
			//		if (Rows > 0)
			//		{
			System.out.println("Number of Rows " + Rows + " Updated");
			//	    }  

	//	}
	} catch (Exception e) {
		System.out.println("ERROR : " + e);
	} finally {

	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOMEPAGE1</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cookie">
<link rel="stylesheet" href="assets/css/user.css">
<link rel="stylesheet" href="assets/css/Google-Style-Login.css">
<link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
<link rel="stylesheet" href="assets/css/Material-Card.css">
<link rel="stylesheet" href="assets/css/Pretty-Registration-Form-1.css">
<link rel="stylesheet" href="assets/css/Pretty-Header.css">
<link rel="stylesheet" href="assets/css/Mockup-MacBook-Pro.css">
<link rel="stylesheet" href="assets/css/Style.css">
</head>

<body>
	<header> <nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand navbar-link" href="#">UTKARSH INFRATECH<i
				class="glyphicon glyphicon-send"></i></a>
			<button class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
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
	<i class="glyphicon glyphicon-star"></i>
	<i class="glyphicon glyphicon-star"></i>
	<i class="glyphicon glyphicon-star"></i>
	<div></div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<input type="search" value="Search Property">
			<button class="btn btn-primary active btn-sm" type="submit">Search
			</button>
		</div>
	</div>
	</header>
	<h2 class="text-center text-primary bg-primary">WELCOME</h2>
	<h3 class="text-info">
		<i class="glyphicon glyphicon-phone-alt"></i> 1800-104-9882
	</h3>
	<div class="container">
		<div class="col-md-4">
			<ul class="nav nav-pills nav-stacked">
				<li><a class="text-warning" href="#">PROFILE </a></li>
				<li><a class="text-warning" href="#">CHANGE PASSWORD</a></li>
				<li><a class="text-warning" href="#">SHOW WISHCART</a></li>
				<li><a class="text-warning" href="#">DELETE WISH CART</a></li>
				<li><a class="text-warning" href="#">ENQUIRY </a></li>
				<li><a class="text-success" href="<%request.logout();%>">LOG OUT</a></li>
			</ul>
		</div>
		<div class="col-md-8">
			<form class="form-horizontal custom-form" method="post"
				action="/buyerprofile.jsp">
				<h3 class="text-center">Update Profile</h3>
				<div class="form-group">
					<div class="col-sm-4 label-column">
						<label class="control-label" for="name-input-field">First
							Name </label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="text" name="txtFirstName"
							placeholder="First Name" value="<%=dbFirstName%>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4 label-column">
						<label class="control-label" for="name-input-field">Last
							Name </label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="text" name="txtLastname"
							placeholder="Last Name" value="<%=dbLastName%>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4 label-column">
						<label class="control-label" for="name-input-field">Mobile
						</label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="text" name="txtMobileno"
							placeholder="mobile no." value="<%=dbMobile%>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4 label-column">
						<label class="control-label" for="email-input-field" >Email
						</label>
					</div>
					<div class="col-sm-6 input-column">
						<input class="form-control" type="email" name="txtemail" readonly
							placeholder="E-Mail" value="<%=dbEmail%>">
					</div>
				</div>
				<button class="btn btn-default active submit-button" type="button">Sign
					UP</button>
			</form>
		</div>
	</div>
	<footer>
	<p class="lead text-center text-warning">ALL THE LIABILITIES ARE
		SUBJECT TO MARKET PRICE. T &amp; C APPLY</p>
	<h5>UTKARSH INFRATECH © 2017</h5>
	</footer>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>