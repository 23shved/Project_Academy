<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	
	<script type="text/javascript">
	$(document).ready(function() {
		var selItem = localStorage.getItem("locales");
		$('#locales').val(selItem ? selItem : 'en');
		$("#locales").change(function() {
			var selectedOption = $('#locales').val();
			if (selectedOption) {
				window.location.replace('?lang=' + selectedOption);
				localStorage.setItem("locales", selectedOption);
			}
		});
	});
</script>

</head>

<body>

	<div class="wrapper fadeInDown">
		<div id="formContent">
			<div class="fadeIn first">
				<img
					src="https://s.dou.ua/img/static/companies/logo_WdA3dVW.png"
					id="icon" alt="Login icon" />
			</div>
			<form:form method="POST" modelAttribute="userForm"
				class="form-signin">

				<spring:bind path="firstName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="firstName" class="form-control"
							placeholder="<spring:message code="registration.firts_name"/>" autofocus="true"></form:input>
						<form:errors path="firstName"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="lastName">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="lastName" class="form-control"
							placeholder="<spring:message code="registration.last_name"/>" autofocus="true"></form:input>
						<form:errors path="lastName"></form:errors>
					</div>
				</spring:bind>


				<spring:bind path="email">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="text" path="email" class="form-control"
							placeholder="<spring:message code="login.email"/>" autofocus="true"></form:input>
						<form:errors path="email"></form:errors>
					</div>
				</spring:bind>

				<spring:bind path="password">
					<div class="form-group ${status.error ? 'has-error' : ''}">
						<form:input type="password" path="password" class="form-control"
							placeholder="<spring:message code="login.password"/>"></form:input>
						<form:errors path="password"></form:errors>
					</div>
				</spring:bind>

				<button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="registration.submit"/></button>


			</form:form>
			<div id="formFooter">
				<h4 class="underlineHover">
					<a href="${contextPath}login"><spring:message code="registration.back"/></a>
				</h4>
			</div>
		</div>
<div id="formFooter">
		<fieldset>
				<label> <spring:message code="login.choose_lang"/>		
				</label>
				<select id = "locales">
				<option value = "en">English
				</option>
				<option value = "ua">Ukrainian
				</option>
				</select>
		</fieldset>
	</div> 
	</div>

</body>
</html>