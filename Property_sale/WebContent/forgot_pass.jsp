<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOMEPAGE</title>
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
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">UTKARSH INFRATECH<i class="glyphicon glyphicon-send"></i></a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active" role="presentation"><a href="#">HOME <i class="glyphicon glyphicon-home"></i></a></li>
                        <li role="presentation"><a href="#">ABOUT US</a></li>
                        <li role="presentation"><a href="#">PROPERTY SELL</a></li>
                        <li role="presentation"><a href="#">CONTACT US<i class="glyphicon glyphicon-earphone"></i></a></li>
                        <li role="presentation"><a href="#">LOGIN /SIGN UP<span class="badge">NEW </span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="clearfix"></div>
    </header>
    <h3 class="text-center text-warning">FORGOT PASSWORD ?</h3>
    <div class="login-card">
        <div></div>
        <form class="form-signin" method="post" action="forgot">
            <input class="form-control" name="user_mail" type="email" required="" placeholder="Email Address" autofocus id="inputEmail">
            <div class="checkbox"></div>
            <button class="btn btn-primary active btn-block btn-lg btn-signin" type="submit">SEND OTP/ACTIVATION LINK</button>
        </form>
    </div>
    <footer>
        <p class="lead text-center text-warning">ALL THE LIABILITIES ARE SUBJECT TO MARKET PRICE. T &amp; C APPLY</p>
        <h5>UTKARSH INFRATECH © 2017 </h5></footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>