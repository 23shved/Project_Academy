<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="https://www.thymeleaf.org"
	xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity5">
<title>Home page</title>
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
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
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
			<div class="navbar-nav nav-item" sec:authorize="isAuthenticated()">

		</div>
			<div class="w3-col s8 w3-bar">
				<span>Welcome <strong>${pageContext.request.userPrincipal.name}</strong></span><br>
				<a href="#" class="w3-bar-item w3-button"><i
					class="fa fa-envelope"></i></a> <a href="#"
					class="w3-bar-item w3-button"><i class="fa fa-user"></i></a> <a
					href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
			</div>
		</div>

		<div class="w3-container">

		</div>
		<div class="w3-bar-block">
			<a href="#"
				class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black"
				onclick="w3_close()" title="close menu"><i
				class="fa fa-remove fa-fw"></i>  Close Menu</a> 
				<a href="/home"
				class="w3-bar-item w3-button w3-padding w3-blue"><i
				class="fa fa-bank fa-fw"></i>  Home page</a> 		
				
				<security:authorize access="hasRole('ROLE_USER')">
				<a href="/applyForm"
				class="w3-bar-item w3-button w3-padding"><i
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
				<b><i class="fa fa-dashboard"></i> My Dashboard</b>
			</h5>
		</header>

		<div class="w3-row-padding w3-margin-bottom">
			<div class="w3-quarter">
				<div class="w3-container w3-red w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-comment w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>52</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Messages</h4>
				</div>
			</div>
			<div class="w3-quarter">
				<div class="w3-container w3-blue w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-eye w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>99</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Views</h4>
				</div>
			</div>
			<div class="w3-quarter">
				<div class="w3-container w3-teal w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-share-alt w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>23</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Shares</h4>
				</div>
			</div>
			<div class="w3-quarter">
				<div class="w3-container w3-orange w3-text-white w3-padding-16">
					<div class="w3-left">
						<i class="fa fa-users w3-xxxlarge"></i>
					</div>
					<div class="w3-right">
						<h3>50</h3>
					</div>
					<div class="w3-clear"></div>
					<h4>Users</h4>
				</div>
			</div>
		</div>
		<div style="margin-left: 10%">

			<div class="w3-container w3-teal">
				<h1>List of your Enrollments</h1>
			</div>

			<div class="w3-container">
				<c:if test="${not empty userImage}">
					<c:forEach items="${userImage}" var="currentuserImage">

						<div class="w3-card-4" style="width: 20%; margin: 2%">
							<img
								src="data:image/jpg;base64, ${currentuserImage.encodedImage}"
								alt="Picture" style="width: 100%">



						</div>

					</c:forEach>

				</c:if>
				<c:if test="${not empty enrollments}">
					<c:forEach items="${enrollments}" var="currentEnrollments">

						<div class="w3-card-4" style="width: 20%; margin: 2%">
							<img
								src="data:image/jpg;base64, ${currentEnrollments.encodedImage}"
								alt="Picture" style="width: 100%">
							<div class="w3-container w3-center">
								<h3>${currentEnrollments.faculty}</h3>
								<p>${currentEnrollments.speciality}</p>
								<p>${currentEnrollments.averageZNO}</p>
							</div>
							<%-- 							<form:form action="${contextPath}/listOfEnrollments" method="POST" enctype="multipart/form-data">
								<input type="hidden" value="${currentEnrollments.id}"
									class="form-control" name="enrollmentId"> 
									<input type="submit" class="w3-button w3-block w3-dark-grey"
									value="+ approve">
							</form:form> --%>

						</div>

					</c:forEach>

				</c:if>
			</div>
			<div>

				<h2>ADD IMAGE</h2>

				<form:form method="POST" action="${contextPath}/addImage"
					enctype="multipart/form-data">
					<table>
						<tr>
							<td><input type="file" name="image" /></td>
						</tr>

						<tr>
							<td><input type="submit" value="Update" /></td>
						</tr>
					</table>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form:form>
			</div>
			<div class="w3-container">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Faculty</th>
							<th>Speciality</th>
							<th>AverageZNO</th>
							<th>Image</th>
				<!-- 			<th>Purchase Date</th>
							 -->
						</tr>
					</thead>
					<tbody>
						<c:forEach var="currentEnrollments" items="${enrollments}">
							<tr>
								<td>${currentEnrollments.id}</td>
								<td>${currentEnrollments.faculty}</td>
								<td>${currentEnrollments.speciality}</td>
								<td>${currentEnrollments.averageZNO}</td>
								
					<%-- 			<td>${bucket.purchaseDate}</td>
								--%>
							</tr>
						</c:forEach>
					</tbody>
				</table>


		</div>

</div>


		<div class="w3-panel">
			<div class="w3-row-padding" style="margin: 0 -16px">

				<div class="w3-twothird">
					<h5>Feeds</h5>
					<table class="w3-table w3-striped w3-white">
						<tr>
							<td><i class="fa fa-user w3-text-blue w3-large"></i></td>
							<td>New record, over 90 views.</td>
							<td><i>10 mins</i></td>
						</tr>
						<tr>
							<td><i class="fa fa-bell w3-text-red w3-large"></i></td>
							<td>Database error.</td>
							<td><i>15 mins</i></td>
						</tr>
						<tr>
							<td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
							<td>New record, over 40 users.</td>
							<td><i>17 mins</i></td>
						</tr>
						<tr>
							<td><i class="fa fa-comment w3-text-red w3-large"></i></td>
							<td>New comments.</td>
							<td><i>25 mins</i></td>
						</tr>
						<tr>
							<td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
							<td>Check transactions.</td>
							<td><i>28 mins</i></td>
						</tr>
						<tr>
							<td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
							<td>CPU overload.</td>
							<td><i>35 mins</i></td>
						</tr>
						<tr>
							<td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
							<td>New shares.</td>
							<td><i>39 mins</i></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<hr>
		<div class="w3-container">
			<h5>General Stats</h5>
			<p>New Visitors</p>
			<div class="w3-grey">
				<div class="w3-container w3-center w3-padding w3-green"
					style="width: 25%">+25%</div>
			</div>

			<p>New Users</p>
			<div class="w3-grey">
				<div class="w3-container w3-center w3-padding w3-orange"
					style="width: 50%">50%</div>
			</div>

			<p>Bounce Rate</p>
			<div class="w3-grey">
				<div class="w3-container w3-center w3-padding w3-red"
					style="width: 75%">75%</div>
			</div>
		</div>
		<hr>

		<div class="w3-container">
			<h5>Countries</h5>
			<table
				class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
				<tr>
					<td>United States</td>
					<td>65%</td>
				</tr>
				<tr>
					<td>UK</td>
					<td>15.7%</td>
				</tr>
				<tr>
					<td>Russia</td>
					<td>5.6%</td>
				</tr>
				<tr>
					<td>Spain</td>
					<td>2.1%</td>
				</tr>
				<tr>
					<td>India</td>
					<td>1.9%</td>
				</tr>
				<tr>
					<td>France</td>
					<td>1.5%</td>
				</tr>
			</table>
			<br>
			<button class="w3-button w3-dark-grey">
				More Countries  <i class="fa fa-arrow-right"></i>
			</button>
		</div>
		<hr>
		<div class="w3-container">
			<h5>Recent Users</h5>
			<ul class="w3-ul w3-card-4 w3-white">
				<li class="w3-padding-16"><img src="/w3images/avatar2.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Mike</span><br></li>
				<li class="w3-padding-16"><img src="/w3images/avatar5.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Jill</span><br></li>
				<li class="w3-padding-16"><img src="/w3images/avatar6.png"
					class="w3-left w3-circle w3-margin-right" style="width: 35px">
					<span class="w3-xlarge">Jane</span><br></li>
			</ul>
		</div>
		<hr>

		<div class="w3-container">
			<h5>Recent Comments</h5>
			<div class="w3-row">
				<div class="w3-col m2 text-center">
					<img class="w3-circle" src="/w3images/avatar3.png"
						style="width: 96px; height: 96px">
				</div>
				<div class="w3-col m10 w3-container">
					<h4>
						John <span class="w3-opacity w3-medium">Sep 29, 2014, 9:12
							PM</span>
					</h4>
					<p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum
						dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.</p>
					<br>
				</div>
			</div>

			<div class="w3-row">
				<div class="w3-col m2 text-center">
					<img class="w3-circle" src="/w3images/avatar1.png"
						style="width: 96px; height: 96px">
				</div>
				<div class="w3-col m10 w3-container">
					<h4>
						Bo <span class="w3-opacity w3-medium">Sep 28, 2014, 10:15
							PM</span>
					</h4>
					<p>Sed do eiusmod tempor incididunt ut labore et dolore magna
						aliqua.</p>
					<br>
				</div>
			</div>
		</div>
		<br>
		<div class="w3-container w3-dark-grey w3-padding-32">
			<div class="w3-row">
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-green">Demographic</h5>
					<p>Language</p>
					<p>Country</p>
					<p>City</p>
				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-red">System</h5>
					<p>Browser</p>
					<p>OS</p>
					<p>More</p>
				</div>
				<div class="w3-container w3-third">
					<h5 class="w3-bottombar w3-border-orange">Target</h5>
					<p>Users</p>
					<p>Active</p>
					<p>Geo</p>
					<p>Interests</p>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<footer class="w3-container w3-padding-16 w3-light-grey">
			  <h4>LOGOS IT ACADEMY</h4>

  <h6>Best University</h6>
  			  <h6>Join us</h6>
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
