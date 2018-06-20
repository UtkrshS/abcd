<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOMEPAGE</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
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
    <h2 class="text-center text-danger bg-success">LOGIN CREDENTIALS</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>Why Sign Up?</h3>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>NewsBase is a leading supplier of business intelligence to the global energy industry. &nbsp;We help our customers to reduce costs and save time by avoiding the wrong decisions and help them generate revenue by making the
                                    right ones. </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> <a class="btn btn-success active btn-lg" role="button" href="register.jsp">Sign Up / New User</a></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-6">
                <div class="login-card">
                    <div></div>
                    <form class="form-signin" method = "post" action="login">
                        <input class="form-control" type="email" required="" placeholder="Email address" autofocus=""  name="txtUser" id="txtUser">
                        <input class="form-control" type="password" required="" placeholder="Password" name="txtPassword"  id="txtPassword">
                        <div class="checkbox">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">Remember me</label>
                            </div>
                        </div>
                        <button class="btn btn-primary active btn-block btn-lg btn-signin" type="submit">Sign in</button>
                    </form><a href="forgot.jsp" class="forgot-password">Forgot your password?</a></div>
            </div>
        </div>
    </div>
    <footer>
        <p>Copyright © ABC LLP 2017</p>
    </footer>
    <div></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>