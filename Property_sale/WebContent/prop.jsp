<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
                        <li role="presentation"><a href="#">CONTACT US</a></li>
                        <li role="presentation"><a href="#">LOGIN /SIGN UP<span class="badge">NEW </span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="clearfix"></div>
    </header>
    <h3 class="text-center text-primary bg-primary">PROPERTY REGISTRATION</h3>
    <div class="form-group"></div>
    <div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal custom-form" method ="post" action="RegProp">
                <h1 class="text-uppercase text-center text-primary"> property registration form</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="dropdown-input-field">YOU ARE </label>
                    </div>
                    <div class="col-sm-4 input-column">
                      <select name="cboBuilder" id="cboBuilder">
                        <option value="0">Select One</option>
                        <option value="KLM">KLM</option>
                        <option value="NKG INFRA">NKG INFRA</option>
                        <option value="SUPERTECH">SUPERTECH</option>
                        <option value="RATAN BUILDERS">RATAN BUILDERS</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="dropdown-input-field">PROPERTY TYPE</label>
                    </div>
                    <div class="col-sm-4 input-column">
                      <select name="cboPropType" id="cboPropType">
                        <option value="0">Select One</option>
                        <option value="Studio">Studio</option>
                        <option value="1BHK">1BHK</option>
                        <option value="2BHK">2BHK</option>
                        <option value="3BHK">3BHK</option>
                        <option value="4BHK">4BHK</option>
                        <option value="4+BHK">4+BHK</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">PROJECT NAME</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="txtProjName">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">PROJECT ADDRESS </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="txtProjAddress">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">CITY </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input name="txtCity" type="text" class="form-control" id="txtCity">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">CONTACT NO.</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input name="txtContact" type="tel" class="form-control" id="txtContact">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">LOCALITY </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input name="txtLocality" type="text" class="form-control" id="txtLocality">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="dropdown-input-field">BEDROOM </label>
                    </div>
                    <div class="col-sm-4 input-column">
                        <select class="form-control" name="cboBedroom">
                            <optgroup label="This is a group">
                                <option value="1" selected=""> 1</option>
                                <option value="2"> 2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </optgroup>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="dropdown-input-field">FURNISHED </label>
                    </div>
                    <div class="col-sm-4 input-column">
                        <select class="form-control" name="cboStatus">
                            <option value="Select One">Select One</option>
                            <option value="Furnished" selected="">Furnished</option>
                            <option value="Semi-Furnished">Semi-Furnished</option>
                            <option value="Unfurnished">Un-Furnished</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">BALCONY </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="txtBalcony" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">AGE OF CONSTRUCTION</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input name="txtAge" type="text" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">CARPET AREA</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="txtCarpet">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">BUILD AREA</label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input name="txtBuildArea" type="text" class="form-control" id="txtBuildArea">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">SALE PRICE PER FLAT</div>
                    <div class="col-sm-6 input-column">
                        <input name="txtCost" type="text" class="form-control" id="txtCost">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">DESCRIPTION </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <textarea name="txtDescription" cols="30" rows="10" class="form-control" id="txtDescription"></textarea>
                  </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">AMETIES </label>
                    </div>
                    <div class="col-sm-6 input-column">
                          <label>
                            <input type="checkbox" name="chkAmities" value="Gymnasium" id="chkAmities_0">
                            Gymnasium </label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="CCTV Surveillance" id="chkAmities_1">
                            CCTV Surveillance</label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="Parking" id="chkAmities_2">
                            Parking</label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="Swimming Pool" id="chkAmities_3">
                            Swimming Pool</label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="Play Area" id="chkAmities_4">
                            Play Area</label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="Elevators" id="chkAmities_5">
                            Elevators</label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="Power Backup" id="chkAmities_6">
                            Power Backup</label>
                          <br>
                          <label>
                            <input type="checkbox" name="chkAmities" value="Public Transportation" id="chkAmities_7">
                            Public Transportation</label>
                          <br>
                        </p>
                    </div>
                </div>
                
              
                
                
                
                
                
                
                
                
                <div class="checkbox">
                    <label>
                        <input name= "chkTerms" type="checkbox" required="" checked="">I've read and accept the terms and conditions</label>
                </div>
                <button class="btn btn-default active btn-block btn-xs submit-button" type="submit">Submit Form</button>
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
