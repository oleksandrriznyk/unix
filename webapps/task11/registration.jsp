<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register new account</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/shop-homepage.css" rel="stylesheet">

    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/validation.jquery.js"></script>
    <script src="js/registration.js"></script>

</head>

<body>

<%@include file="/WEB-INF/jspf/header.jspf" %>

<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="container">
            <div class="row centered-form">
                <div class="col-xs-12 col-sm-8 col-md-4  col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                Register new account<br/>
                                <small>Validation on jQuery</small>
                            </h3>
                        </div>
                        <div class="panel-body">
                            <form id="register_form" method="post" action="registration" onsubmit="return isValidForm()" enctype="multipart/form-data"
                                  >

                                <!-- ------------- User already regitered error ------------- -->
                                <div id="already_registered" class="alert alert-danger" role="alert" hidden="true">
                                    User with this email already registered.
                                </div>
                                <c:if test="${alreadyRegistered}">
                                    <div class="alert alert-danger" role="alert">
                                        User with this email already registered.
                                    </div>
                                </c:if>

                                <!-- ------------- Invalid captcha error ------------- -->
                                <c:if test="${invalidCaptcha}">
                                    <div class="alert alert-danger" role="alert">
                                        Captcha incorrect or expired.
                                    </div>
                                </c:if>

                                <!-- ------------- Registration error ------------- -->
                                <c:if test="${registrationError}">
                                    <div class="alert alert-danger" role="alert">
                                        Registration error.
                                    </div>
                                </c:if>

                                <c:if test="${(validation ne null) and validation.size > 0}">
                                    <div class="alert alert-danger" role="alert">
                                        <c:forEach var="entry" items="${validation}">
                                            ${entry.value}<br/>
                                        </c:forEach>
                                    </div>
                                </c:if>

                                <!-- ------------- First name field ------------- -->
                                <div class="form-group">
                                    <input type="text" name="first_name" id="first_name" class="form-control"
                                           placeholder="First Name" value="${registrationForm.firstName}">
                                    <span id="first_name_error" class="help-block hide">
	Name must be more than 3 letters
</span>
                                </div>

                                <!-- ------------- Last name field ------------- -->
                                <div class="form-group">
                                    <input type="text" name="last_name" id="last_name" class="form-control"
                                           placeholder="Last Name" value="${registrationForm.lastName}">
                                    <span id="last_name_error" class="help-block hide">
	Last name must be more than 3 letters
</span>
                                </div>

                                <!-- ------------- email field ------------- -->
                                <div class="form-group">
                                    <input type="email" name="email" id="email" class="form-control"
                                           placeholder="Email Address" value="${registrationForm.email}">
                                    <span id="email_error" class="help-block hide">
	Email not valid
</span>
                                </div>
                                ${registrationFormBean.password}
                                <!-- ------------- password field ------------- -->
                                <div class="form-group">
                                    <input type="password" name="password" id="password" class="form-control"
                                           placeholder="Password">
                                    <span id="password_error" class="help-block hide">
	Password must be more than 3 letters.
</span>
                                </div>

                                <!-- ------------- password confirmation field ------------- -->
                                <div class="form-group">
                                    <input type="password" name="password_confirmation" id="password_confirmation"
                                           class="form-control" placeholder="Confirm Password">
                                    <span id="password_confirmation_error" class="help-block hide">
	Passwords must be same.
</span>
                                </div>

                                <!-- ------------- captcha field ------------- -->
                                <t:captcha
                                        image="captcha"
                                        captcha_input_name="captcha"
                                        hidden_field_name="captchaId"
                                        image_id="${id}"
                                />
                                <!-- ------------- subscription field ------------- -->
                                <div class="form-group">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="subscribe" id="subscribe" value="true"
                                        <c:if test="${registrationForm.subscribe}">checked</c:if>
                                        >
                                        Receive news
                                    </label>
                                </div>

                                 <div class="form-group">
                                    <label for="exampleInputFile">File input</label>
                                    <input type="file" id="exampleInputFile" name="avatar">
                                  </div>

                                <input type="submit" id="form_submit" value="Register" name="form_submit"
                                       class="btn btn-info btn-block"/>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
<!-- /.container -->



</body>

</html>