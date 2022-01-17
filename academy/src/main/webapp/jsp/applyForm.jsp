
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<title>Apply page</title>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Raleway", sans-serif
}
</style>
<body class="w3-light-grey">

	<!-- Top container -->
	<div class="w3-bar w3-top w3-black w3-large" style="z-index: 4">
		<button
			class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey"
			onclick="w3_open();">
			<i class="fa fa-bars"></i>  Menu
		</button>
		<form id="logoutForm" method="POST" action="${contextPath}/logout" >
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	<span class="w3-bar-item w3-right" style ="cursor: pointer;"> <a 
			onclick="document.forms['logoutForm'].submit()">Logout</a></span>
	</div>

	<!-- Sidebar/menu -->
	<nav class="w3-sidebar w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidebar">
		<br>
		<div class="w3-container w3-row">
			<div class="w3-col s4">
		<img src="https://www.kbl.co.uk/wp-content/uploads/2017/11/Default-Profile-Male.jpg"
					alt="lmm" style="width: 100%">
			</div>
			<div class="w3-col s8 w3-bar">
				<span>Welcome <strong>${pageContext.request.userPrincipal.name}</strong></span><br>
				<a href="#" class="w3-bar-item w3-button"><i
					class="fa fa-envelope"></i></a> <a href="#"
					class="w3-bar-item w3-button"><i class="fa fa-user"></i></a> <a
					href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
			</div>
		</div>
		<hr>
		<div class="w3-container">

		</div>
				<div class="w3-bar-block">
			<a href="#"
				class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
				onclick="w3_close()" title="close menu"><i
				class="fa fa-remove fa-fw"></i>  Close Menu</a> 
				<a href="/home"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bank fa-fw"></i>  Home page</a> 		
				
				<security:authorize access="hasRole('ROLE_USER')">
				<a href="/applyForm"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-users fa-fw"></i>  Apply Form</a> 
				
				</security:authorize>
				<a href="/listOfStudents"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-eye fa-fw"></i>  View rating</a> 	
				
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-bullseye fa-fw"></i>  Enroll student</a> 
				</security:authorize>
				
				<security:authorize access="hasRole('ROLE_ADMIN')">
				<a href="#"
				class="w3-bar-item w3-button w3-padding"><i
				class="fa fa-cog fa-fw"></i>  Settings</a>
				</security:authorize>
				<br> <br>

		</div>
	</nav>


	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px; margin-top: 43px;">

		<!-- Header -->
		<header class="w3-container" style="padding-top: 22px">
			<h5>
				<b><i class="fa fa-dashboard"></i> Apply for some University</b>
			</h5>
		</header>


		<div style="margin-left: 10%">
			<div class="w3-container w3-teal">
				<h1>Enter data</h1>
			</div>
			<div class="w3-container">

				<form:form method="POST" action="${contextPath}/applyForm"
					enctype="multipart/form-data">
					<table>
						<tr>
							<td>Faculty</td>
							<td><input type="text" name="faculty" /></td>
						</tr>
						<tr>
							<td>Speciality</td>
							<td><input type="text" name="speciality" /></td>
						</tr>
						<tr>
							<td>Math Mark</td>
							<td><input type="number" name="mathZNO" /></td>
						</tr>
						<tr>
							<td>English Mark</td>
							<td><input type="number" name="englishZNO" /></td>
						</tr>
						<tr>
							<td>Internal Test Mark</td>
							<td><input type="number" name="internalTest" /></td>
						</tr>
						<tr>
							<td>Attach your documents</td>
							<td><input type="file" name="image" /></td>
						</tr>
						<tr>
							<td><input type="submit" value="Submit" /></td>
						</tr>
					</table>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form:form>


			</div>

		</div>

		<!-- Footer -->
		<footer class="w3-container w3-padding-16 w3-light-grey">
			<h4>FOOTER</h4>
			<p>
				Powered by <a href="https://www.w3schools.com/w3css/default.asp"
					target="_blank">w3.css</a>
			</p>
		</footer>

		<!-- End page content -->
	</div>

	<script>
		// Get the Sidebar
		var mySidebar = document.getElementById("mySidebar");

		// Get the DIV with overlay effect
		var overlayBg = document.getElementById("myOverlay");

		// Toggle between showing and hiding the sidebar, and add overlay effect
		function w3_open() {
			if (mySidebar.style.display === 'block') {
				mySidebar.style.display = 'none';
				overlayBg.style.display = "none";
			} else {
				mySidebar.style.display = 'block';
				overlayBg.style.display = "block";
			}
		}

		// Close the sidebar with the close button
		function w3_close() {
			mySidebar.style.display = "none";
			overlayBg.style.display = "none";
		}
	</script>

</body>
</html>
