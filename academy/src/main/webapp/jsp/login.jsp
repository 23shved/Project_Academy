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

<title>Log in with your account</title>

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
			<form method="POST" action="${contextPath}/login" class="form-signin">
				<div class="form-group ${error != null ? 'has-error' : ''}">
					<span>${message}</span> <input name="email" type="text"
						placeholder="<spring:message code="login.email"/>" id="login" class="fadeIn second" /> <input
						name="password" type="password" placeholder="<spring:message code="login.password"/>"
						id="password" class="fadeIn third" /> <span>${error}</span> <input
						type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">Log
						In</button>

				</div>

			</form>
			<div id="formFooter">
				<h4 class="underlineHover">
					<a href="${contextPath}/registration"><spring:message code='login.create_account'/></a>
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