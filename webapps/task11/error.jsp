<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register new account</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/shop-homepage.css" rel="stylesheet">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/validation.jquery.js"></script>
  </head>
  <body>
    <%@include file="/WEB-INF/jspf/header.jspf" %>
    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="container">
          <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4  col-md-offset-4">
              <c:if test="${internalError}">
                <div class="alert alert-danger" role="alert">
                  505 Internal Server Error
                </div>
              </c:if>
              <c:if test="${regError}">
                <div class="alert alert-danger" role="alert">
                  <b>Error:</b> Incorrect email or password
                </div>
              </c:if>
              <c:if test="${captchaError}">
                <div class="alert alert-danger" role="alert">
                  <b>Error:</b> Captcha time has been expired
                </div>
              </c:if>
              <a href="index.jsp" type="button" class="btn btn-default">Go to the main page</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container -->
    <div class="container">
    </div>
    <!-- /.container -->
  </body>
</html>