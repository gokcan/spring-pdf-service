<%--
  Created by IntelliJ IDEA.
  User: SKYLIFE
  Date: 24/07/2017
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="../style2.css">
    c
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
            <h5>Login with your credentials:</h5>
            <c:if test="${not empty error}">
                <div style="background-clip: border-box">${error}</div>
            </c:if>
            <c:if test="${not empty message}">
                <div style="background-clip: border-box">${message}</div>
            </c:if>
            <form class="" method="post" action="../login" id="login_form" data-toggle="validator" role="form">
                <fieldset>
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label">Your Name</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="username" id="username"
                                       placeholder="Enter your Username" required/>
                                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                                <div class="help-block with-errors"
                                     style="font-weight: bold; font-style: oblique; font-size: small"></div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">Password</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg"
                                                                   aria-hidden="true"></i></span>
                                <input type="password" class="form-control" name="password" id="password"
                                       placeholder="Enter your Password" required/>
                                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                                <div class="help-block with-errors"
                                     style="font-weight: bold; font-style: oblique; font-size: small"></div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Login!</button>
                    </div>

                </fieldset>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript"
        src="webjars/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>

<script type="text/javascript"
        src="webjars/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min.js"></script>

<script type="text/javascript" src="../main.js"></script>
<script type="text/javascript" src="../validator.js"></script>
</body>
</html>