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
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row register-form">
                <h3>${ErrorMsg}</h3>
                    <div class="col-md-8 col-md-offset-2">
                        <form class="form-horizontal custom-form" method ="post" action="QuickRegister">
                            <h1>Register Form</h1>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="name-input-field">First Name </label>
                                </div>
                                <div class="col-sm-6 input-column">
                                    <input class="form-control" type="text" name="txtFirstName" placeholder="First Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="name-input-field">Last Name </label>
                                </div>
                                <div class="col-sm-6 input-column">
                                    <input class="form-control" type="text" name="txtLastname" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="name-input-field">Mobile </label>
                                </div>
                                <div class="col-sm-6 input-column">
                                    <input class="form-control" type="text" name="txtMobileno" placeholder="mobile no.">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="email-input-field">Email </label>
                                </div>
                                <div class="col-sm-6 input-column">
                                    <input class="form-control" type="email" name="txtemail" placeholder="E-Mail">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="pawssword-input-field">Password </label>
                                </div>
                                <div class="col-sm-6 input-column">
                                    <input class="form-control" type="password" name="txtpassword">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="repeat-pawssword-input-field">Repeat Password </label>
                                </div>
                                <div class="col-sm-6 input-column">
                                    <input class="form-control" type="password" name="txtmpassword">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 label-column">
                                    <label class="control-label" for="dropdown-input-field">Dropdown </label>
                                </div>
                                <div class="col-sm-4 input-column">
                                    <div class="dropdown">
                                        <select name="usrType" id="usrType" >
                                        <option value="Individual">Individual</option>
                                        <option value="Agent">Agent</option>
                                        <option value="Builder">Builder</option>
                                        </select>
                                                                            </div>
                                </div>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="chkagree" required="">I've read and accept the terms and conditions</label>
                            </div>
                            <button class="btn btn-default active submit-button" type="submit">Sign UP</button>
                        </form>
                    </div>
                </div>
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