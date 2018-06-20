<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Images</title>
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
                        <li role="presentation"><a>ABOUT US</a></li>
                        <li role="presentation"><a href="#">PROPERTY SELL</a></li>
                        <li role="presentation"><a href="contactusform.jsp">CONTACT US</a></li>
                        <li role="presentation"><a href="login.jsp">LOGIN /SIGN UP</a></li>
                    </ul>
                </div>
            </div>
        </nav><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i><i class="glyphicon glyphicon-star"></i>
        <div></div>
        <div class="row"></div>
    </header>
    <h3 class="text-center bg-primary">STEP 2 : Upload Images</h3>
    <div></div>
    <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal custom-form" method="post" action="UploadImages" enctype="multipart/form-data">
                <h1 class="text-uppercase text-center text-primary"> IMAGE Upload</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">FRONT IMAGE</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" name="imgFront" id="imgFront">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label"> </label>
                        <label class="control-label" for="name-input-field"> HALL IMAGE</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" accept="image/*" name="imgHall"  id="imgHall">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">BEDROOM IMAGE</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" name="imgBed"  id="imgBed">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">KITCHEN IMAGE</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" name="imgKitchen" id="imgKitchen">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">WASHROOM IMAGE</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" name="imgWash"  id="imgWash">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">OTHER IMAGE 1</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" name="imgOther1"  id="imgOther1">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">OTHER IMAGE 2</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input type="file" name="imgOther2"  id="imgOther2">
                    </div>
                </div>
                <button class="btn btn-default active btn-block btn-xs submit-button" type="submit">Submit Images</button>
            </form>
        </div>
    </div>
    <footer>
        <p class="lead text-center text-warning">ALL THE LIABILITIES ARE SUBJECT TO MARKET PRICE. T &amp; C APPLY</p>
        <h5>UTKARSH INFRATECH © 2017 </h5>
     </footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>