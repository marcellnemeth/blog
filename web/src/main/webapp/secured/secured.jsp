<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>"
          rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/blog.css"/>" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/my.css"/>" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item " href="<c:url value="/"/>">Home</a>
            <c:if test="${sessionScope.user ==null}">
                <a class="blog-nav-item" href="<c:url value="/public/login.jsp"/>">Login</a>
            </c:if>
            <c:if test="${sessionScope.user !=null}">
                <a class="blog-nav-item" href="<c:url value="/Logout"/>">Logout</a>
            </c:if>
            <a class="blog-nav-item active"
               href="<c:url value="/secured/secured"/>">Users</a>

        </nav>
    </div>
</div>

<div class="container">


    <div class="row">
        <c:forEach items="${users}" var="user">
            <div class="col-lg-3 my-box">
                <img class="img-circle" src="${user.img}" width="140" height="140">
                <h2>${user.firstName} &nbsp;${user.lastName}</h2>
                <p>
                        ${user.username}<br>

                </p>
                <p><a class="btn btn-default" href="#" role="button" onclick="handleClick(number);"
                      data-toggle="modal" data-target="#myModal">View details &raquo;</a>
                    <a class="btn btn-default" href="mailto:mail_addr" role="button"><span
                            class="glyphicon glyphicon-envelope"></span></a></p>
            </div>
        </c:forEach>
    </div>
</div>
<!-- /.container -->
<div class="loader col-sm-offset-6"></div>
<div id="myModal" class="modal fade" role="dialog"></div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/user.js"/>"></script>
<script type="text/javascript">
    function getOtherContextPath() {
        return "<c:out value="${pageContext.request.contextPath}" />";
    }
</script>
</body>
</html>
