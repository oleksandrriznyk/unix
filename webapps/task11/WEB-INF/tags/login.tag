<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="login_url" required="true" type="java.lang.String" %>
<%@ attribute name="logout_url" required="true" type="java.lang.String" %>

<c:choose>
	<c:when test="${user eq null}">

<div class="navbar-collapse collapse">
	<form action="${login_url}" class="navbar-form navbar-right" method="post">
		<div class="form-group input-group-sm">
			<input type="text" class="form-control" name="login_email" placeholder="Email">
		</div>
		<div class="form-group input-group-sm">
			<input type="password" class="form-control" name="login_password" placeholder="Password">
		</div>
		<div class="form-group">
			<button class="btn btn-success btn-sm" name="login" type="submit">Sign in</button>
		</div>
			<a class="btn btn-warning btn-sm" href="registration">Sign up</a>
	</form>
</div>
	
	</c:when>
	<c:otherwise>
		
<img width="60" class="img-rounded" src="avatar?name=${user.avatar}"/>
<p class="navbar-text navbar-right">Hello, <b>${user.firstName} ${user.lastName}</b>
	<a href="${logout_url}" class="btn btn-danger btn-sm">Log out</a>
</p>
		
	</c:otherwise>
</c:choose>