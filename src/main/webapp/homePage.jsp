<%--
  Created by IntelliJ IDEA.
  User: SKYLIFE
  Date: 22/07/2017
  Time: 03:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="${pageContext.request.contextPath}/userPage">JD User</a> | <a
        href="${pageContext.request.contextPath}/adminPage">JD Admin</a> | <a
        href="javascript:document.getElementById('logout').submit()">Logout</a>

<h3>Welcome to Skylife Systems</h3>

<c:url value="/logout" var="logoutUrl"/>
<form id="logout" action="${logoutUrl}" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>