<%--
  Created by IntelliJ IDEA.
  User: SKYLIFE
  Date: 24/07/2017
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <title>List of the Users</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript"
            src="webjars/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <script type="text/javascript"
            src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">

    <script type="text/javascript"
            src="webjars/datatables/1.10.15/js/jquery.dataTables.min.js"></script>

    <link rel="stylesheet" type="text/css"
          href="webjars/datatables/1.10.15/css/jquery.dataTables.min.css"/>

    <script src="../js/datatable.js"></script>
</head>

<body style="
    background: url(wall-background.png) repeat;
    font-family: Oxygen, Roboto, sans-serif;
    background-size: cover">

<table id="usersTable" class="table table-striped table-bordered table-hover" cellspacing="0">

    <!-- Header Table -->
    <thead>
    <tr style="color: ghostwhite">
        <th>Username</th>
        <th>Email</th>
        <th>Birthday</th>
        <th>Sex</th>
    </tr>
    </thead>
</table>

<form action="../download" method="get">
    <button class="btn btn-danger" type="submit" formmethod="get" formaction="../download">Download PDF</button>
</form>

<c:url value="/logout" var="logoutUrl"/>
<form id="logout" action="${logoutUrl}" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

<a href="javascript:document.getElementById('logout').submit()">Logout</a>

</body>
</html>