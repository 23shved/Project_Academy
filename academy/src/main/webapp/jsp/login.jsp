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
</head>

<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<div class="fadeIn first">
				<img src="https://tickikids.ams3.cdn.digitaloceanspaces.com/z1.cache/gallery/organizations/3364/icon_social_5cbef4ec4d1680.85526827.jpg"
					id="icon" alt="Login icon" />
			</div>
			<form method="POST" action="${contextPath}/login" class="form-signin">
				<div class="form-group ${error != null ? 'has-error' : ''}">
					<span>${message}</span> <input name="email" type="text"
						placeholder="Email" id="login" class="fadeIn second" />
					<input name="password" type="password" placeholder="Password"
						id="password" class="fadeIn third" /> <span>${error}</span>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
						 <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>

				</div>

			</form>
			<div id="formFooter">
			            <h4 class="underlineHover"><a href="${contextPath}/registration">Create an account</a></h4>
						</div>
		</div>

	</div>


</body>
</html>