<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create Periodical</title>

   <%--  <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"> --%>
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div class="container">
		<!-- Sidebar -->
		<div class="w3-sidebar w3-light-grey w3-bar-block" style="width: 15%">
		  <h4 class="w3-bar-item">Menu</h4>
		  <a href="/home" class="w3-bar-item w3-button">Home</a>
		  <a href="create-periodical" class="w3-bar-item w3-button">Create periodical</a>
		  <a href="#" class="w3-bar-item w3-button">Bucket</a>
		</div>

		<%-- <c:choose>
			<c:when test="${pageContext.request.userPrincipal.authenticated}">Show something</c:when>
			<c:otherwise>Show something else</c:otherwise>
		</c:choose> --%>

		<!-- Page Content -->
		<div style="margin-left: 15%">
			<div class="w3-container w3-blue-grey">
				<h3>Create Periodical</h3>
			</div>

			<div class="w3-container">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</form>

					<h4>
						Welcome ${pageContext.request.userPrincipal.name} | 
						<a href="#"	onclick="document.forms['logoutForm'].submit()">Logout</a>
					</h4>
				</c:if>
				
				<form:form method="POST" action="${contextPath}/addPeriodical" modelAttribute="periodical"> 
					<table>
						<tr>
							<td><form:label path="name">Name</form:label></td>
							<td><form:input path="name" /> </td>
						</tr>
						<tr>
							<td><form:label path="description">Description</form:label></td>
							<td><form:input path="description" /> </td>
						</tr>
						<tr>
							<td><form:label path="price">Price</form:label></td>
							<td><form:input path="price" /> </td>
						</tr>
						<tr>
							<td><input type="submit" value="Submit" /></td>
						</tr>
					</table>
					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form:form>

				
			</div>
		</div>

	</div>
<!-- /container -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<%-- <script src="${contextPath}/resources/js/bootstrap.min.js"></script> --%>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>