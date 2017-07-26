<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="">

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <link rel="stylesheet" type="text/css"
          href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="webjars/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker3.css"/>

    <title>Well, hello there!</title>
</head>
<body>
<div class="container">
    <div class="row main">
        <div class="main-login main-center">
            <h5>Register with your credentials:</h5>
            <form class="" method="post" action="../register" id="registration_form" data-toggle="validator"
                  role="form">

                <div class="form-group">
                    <label for="username" class="cols-sm-2 control-label">Your Name</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="username" id="username"
                                   data-remote="../validate"
                                   placeholder="Enter your Username" data-remote-error="Username exists!" required/>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>

                            <div class="help-block with-errors"
                                 style="font-weight: bold; font-style: oblique; font-size: small; margin-left: 10px"></div>
                        </div>
                    </div>
                </div>

                <div class="form-group has-feedback">
                    <label for="email" class="cols-sm-2 control-label">Your Email</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope fa"
                                                                   aria-hidden="true"></i></span>
                            <input type="email" class="form-control" name="email" id="email"
                                   placeholder="Enter your Email" data-email-error="Not a valid email address!"
                                   required/>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-errors"
                                 style="font-weight: bold; font-style: oblique; font-size: small; margin-left: 10px"></div>
                        </div>
                    </div>
                </div>

                <div class="form-group has-feedback">
                    <label class="cols-sm-2 control-label">Birthdate</label>
                    <div class="cols-sm-10">
                        <div class="input-group date" id="datePicker">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"
                                                                   aria-hidden="true"></i></span>
                            <input type="date" class="form-control" name="date" id="date"
                                   placeholder="MM/DD/YYYY" required/>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-errors"
                                 style="font-weight: bold; font-style: oblique; font-size: small; margin-left: 10px"></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="cols-sm-2 control-label">Sex</label>
                    <div class="cols-sm-10">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-primary active">
                                <input type="radio" name="sex" id="sexMale" value="1" autocomplete="off" checked>
                                Signore
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="sex" id="sexFemale" value="0" autocomplete="off"> Lady
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="sex" id="sexNA" value="9" autocomplete="off"> Do not wish to
                                disclose
                            </label>
                        </div>
                    </div>
                </div>


                <div class="form-group has-feedback">
                    <label for="password" class="cols-sm-2 control-label">Password</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                                                   aria-hidden="true"></i></span>
                            <input type="password" class="form-control" name="password" id="password"
                                   placeholder="Enter your Password" data-minlength="8" required/>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-errors"
                                 style="font-weight: bold; font-style: oblique; font-size: small; margin-left: 10px"></div>
                        </div>
                    </div>
                </div>

                <div class="form-group has-feedback">
                    <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                                                   aria-hidden="true"></i></span>
                            <input type="password" class="form-control" name="confirm" id="confirm"
                                   placeholder="Confirm your Password" data-match="#password"
                                   data-match-error="Whoops, passwords don't match!" required/>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <div class="help-block with-errors"
                                 style="font-weight: bold; font-style: oblique; font-size: small; margin-left: 10px"></div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Register</button>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript"
        src="webjars/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript"
        src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>

<script type="text/javascript"
        src="webjars/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>

<script type="text/javascript" src="../date-picker.js"></script>
<script type="text/javascript" src="../validator.js"></script>
</body>
</html>