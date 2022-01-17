<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Create an account</title>
<link type="text/css" href="login.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>

	<div class="wrapper fadeInDown">
		<div id="formContent">
			<div class="fadeIn first">
				<img
					src="https://tickikids.ams3.cdn.digitaloceanspaces.com/z1.cache/gallery/organizations/3364/icon_social_5cbef4ec4d1680.85526827.jpg"
					id="icon" alt="Login icon" />
			</div>
			<form:form method="POST" modelAttribute="userForm"
				class="form-signin">

				<spring:bind path="firstName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="firstName" class="form-control"
							placeholder="First name" autofocus="true"></form:input>
						<form:errors path="firstName"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="lastName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="lastName" class="form-control"
							placeholder="Last name" autofocus="true"></form:input>
						<form:errors path="lastName"></form:errors>
					</div>
				</spring:bind>


				<spring:bind path="email">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="email" class="form-control"
							placeholder="Email" autofocus="true"></form:input>
						<form:errors path="email"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="password">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="password" path="password" class="form-control"
							placeholder="Password"></form:input>
						<form:errors path="password"></form:errors>
					</div>
				</spring:bind>

				<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>


			</form:form>
			<div id="formFooter">
				<h4 class="underlineHover">
					<a href="${contextPath}login">Back to Log In</a>
				</h4>
			</div>
		</div>

	</div>

</body>
</html>