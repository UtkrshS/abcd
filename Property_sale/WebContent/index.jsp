<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import=" java.io.IOException" %>
<%@ page import=" java.io.PrintWriter" %>
<%@ page import=" java.sql.Connection" %>
<%@ page import=" java.sql.DriverManager" %>
<%@ page import=" java.sql.PreparedStatement" %>
<%@ page import=" java.sql.*" %>

<%@ page import=" javax.servlet.ServletException" %>
<%@ page import=" javax.servlet.annotation.WebServlet" %>
<%@ page import=" javax.servlet.http.HttpServlet" %>
<%@ page import=" javax.servlet.http.HttpServletRequest" %>
<%@ page import=" javax.servlet.http.HttpServletResponse" %>
<%@ page import=" javax.servlet.http.HttpSession" %>
<%
String[] UserType = new String[3];
String[] property_type = new String[3];
String[] Proj_Name = new String[3];
String[] City = new String[3] ;
String[] bedroom = new String[3] ;
String[] build_area = new String[3] ;
String[] Status  = new String[3];
String[] Image_Front = new String[3] ;
String[] Image_Hall = new String[3]; 
String[] Sale = new String[3];
Integer i=0;
try{
	
			Class.forName("com.mysql.jdbc.Driver");
			Connection	myCon=DriverManager.getConnection("jdbc:mysql://localhost:3306/propsell","root","");
			Statement	mySt  = myCon.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			ResultSet myRst ;
			String rData = "Select U.Usertype , P.Property_Type , P.Project_Name, P.City, P.Bedroom, P.Build_area, P.Status, P.Sale, I.Img_Front, I.Img_Hall From prop_img as I, prop_reg  AS P, customer_reg as U Where U.cust_id=P.User_id  AND P.Propert_Id=I.Property_id  ";
			myRst = mySt.executeQuery(rData);
			myRst.afterLast();
			System.out.println("After Last  +  " + rData );
			while (myRst.previous() && i<3)
			{
				 UserType[i] = myRst.getString("Usertype");
				 property_type[i] = myRst.getString("Property_Type");
				 Proj_Name[i] = myRst.getString("Project_Name");
				 City[i] = myRst.getString("City");
				 bedroom[i] = myRst.getString("Bedroom");
				 build_area[i]  = myRst.getString("Build_area");
				 Status[i] = myRst.getString("Status");
				 Image_Front[i] = myRst.getString("Img_Front");
				 Image_Hall[i] = myRst.getString("Img_Hall");
				 Sale[i]= myRst.getString("Sale");
				 i++;
				 
				 System.out.println(UserType[i] +" \n " +  property_type[i]);
			}
	i=0;	
}catch(Exception e)
{
	System.out.println("ERROR + "+e);	
}

%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOMEPAGE_Updated</title>
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
                        <li role="presentation"><a href="#"> ABOUT US</a></li>
                        <li role="presentation"><a href="#">REACH US</a></li>
                        <li role="presentation"><a href="#">CONTACT US</a></li>
                        <li role="presentation"><a href="#">LOGIN /SIGN UP<span class="badge">NEW </span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="col-md-9 col-md-offset-2">
                <input class="input-lg" type="search" placeholder="Search Property">
                <button class="btn btn-success active btn-lg" type="submit">Search </button>
            </div>
        </div>
    </header>
    <div class="alert alert-success" role="alert">
        <p class="lead text-center">GST APPLICABLE ON MARKET PRICE FROM 1ST JULY 2017.</p>
    </div>
    <h1>Welcome !! <em>Your world, our Mission</em></h1>
    <ul class="nav nav-tabs categories">
        <li><a href="#">PROJECTS </a></li>
        <li><a href="#">BUY</a></li>
        <li><a href="#">SELL</a></li>
        <li><a href="#">WHATS NEW!</a></li>
        <li><a href="#">FEEDBACK/ QUERY</a></li>
    </ul>
    <div class="container post">
        <div class="row">
            <div class="col-md-12">
                <div class="carousel slide" data-ride="carousel" id="carousel-1">
                    <div class="carousel-inner" role="listbox">
                        <div class="item"><img class="img-rounded" src="assets/img/home6.jpg" alt="Slide Image" width="1180" ></div>
                        <div class="item"><img src="assets/img/home2.jpg" alt="Slide Image" width="1180" ></div>
                        <div class="item active"><img class="img-responsive" src="assets/img/home13.jpg" alt="Slide Image" width="1180"></div>
                    </div>
                    <div><a class="left carousel-control" href="#carousel-1" role="button" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span class="sr-only">Previous</span></a><a class="right carousel-control" href="#carousel-1" role="button"
                        data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a></div>
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-1" data-slide-to="0"></li>
                        <li data-target="#carousel-1" data-slide-to="1"></li>
                        <li data-target="#carousel-1" data-slide-to="2" class="active"></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h3 class="text-left text-success">We help you to create your desired home, offices , flats etc. at reasonable prices.For more information get register yourself and recieve updates from our experts.</h3></div>
    <div class="container-fluid">
        <h3 class="text-nowrap text-center">Properties in <%=City[0]%></h3>
        <div class="col-md-5"><img class="img-rounded img-responsive" src="<%=Image_Front[0]%>" width="250"></div>
        <div class="col-md-7">
            <table width="450" border="1">
              <tbody>
                <tr>
                  <td><strong>Project Name</strong></td>
                  <td><%=Proj_Name[0] %></td>
                </tr>
                <tr>
                  <td><strong>Selling By</strong></td>
                  <td><%=UserType[0] %></td>
                </tr>
                <tr>
                  <td><strong>Flat Type</strong></td>
                  <td><%=property_type[0] %></td>
                </tr>
                <tr>
                  <td><strong>Number of Bedrooms</strong></td>
                  <td><%=bedroom[0] %></td>
                </tr>
                <tr>
                  <td><strong>Build_Area </strong></td>
                  <td><%=build_area[0] %></td>
                </tr>
                <tr>
                  <td><strong>City</strong></td>
                  <td><%=City[0] %></td>
                </tr>
                <tr>
                  <td><strong>Status</strong></td>
                  <td><%=Status[0]%></td>
                </tr>
                <tr>
                  <td><strong>Booking Amount</strong></td>
                  <td><%=Sale[0]%></td>
                </tr>
              </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid">
        <h3 class="text-nowrap text-center">Properties in <%=City[1]%></h3>
        <div class="col-md-5"><img class="img-rounded img-responsive" src="<%=Image_Front[1]%>" width="250"></div>
        <div class="col-md-7">
            <table width="450" border="1">
              <tbody>
                <tr>
                  <td><strong>Project Name</strong></td>
                  <td><%=Proj_Name[1] %></td>
                </tr>
                <tr>
                  <td><strong>Selling By</strong></td>
                  <td><%=UserType[1] %></td>
                </tr>
                <tr>
                  <td><strong>Flat Type</strong></td>
                  <td><%=property_type[1] %></td>
                </tr>
                <tr>
                  <td><strong>Number of Bedrooms</strong></td>
                  <td><%=bedroom[1] %></td>
                </tr>
                <tr>
                  <td><strong>Build_Area </strong></td>
                  <td><%=build_area[1] %></td>
                </tr>
                <tr>
                  <td><strong>City</strong></td>
                  <td><%=City[1] %></td>
                </tr>
                <tr>
                  <td><strong>Status</strong></td>
                  <td><%=Status[1]%></td>
                </tr>
                <tr>
                  <td><strong>Booking Amount</strong></td>
                  <td><%=Sale[1]%></td>
                </tr>
              </tbody>
            </table>
        </div>
    </div>
    <div class="container-fluid">
        <h3 class="text-nowrap text-center">Properties in <%=City[2]%> </h3>
        <div class="col-md-5"><img class="img-rounded img-responsive" src="<%=Image_Front[2]%>" width="250"></div>
        <div class="col-md-7">
             <table width="450" border="1">
              <tbody>
                <tr>
                  <td><strong>Project Name</strong></td>
                  <td><%=Proj_Name[2]%> </td>
                </tr>
                <tr>
                  <td><strong>Selling By</strong></td>
                  <td><%=UserType[2] %></td>
                </tr>
                <tr>
                  <td><strong>Flat Type</strong></td>
                  <td><%=property_type[2] %></td>
                </tr>
                <tr>
                  <td><strong>Number of Bedrooms</strong></td>
                  <td><%=bedroom[2] %></td>
                </tr>
                <tr>
                  <td><strong>Build_Area </strong></td>
                  <td><%=build_area[2] %></td>
                </tr>
                <tr>
                  <td><strong>City</strong></td>
                  <td><%=City[2] %></td>
                </tr>
                <tr>
                  <td><strong>Status</strong></td>
                  <td><%=Status[2]%></td>
                </tr>
                <tr>
                  <td><strong>Booking Amount</strong></td>
                  <td><%=Sale[2]%></td>
                </tr>
              </tbody>
            </table>
        </div>
    </div>
    <footer>
        <p class="lead text-center text-warning">ALL THE LIABILITIES ARE SUBJECT TO MARKET PRICE. T &amp; C APPLY</p>
        <h5>UTKARSH INFRATECH © 2017 </h5></footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>