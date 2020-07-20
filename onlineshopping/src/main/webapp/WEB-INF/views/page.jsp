<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">



<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-read-theme.min.css.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!--*************************** NAVBAR SECTION ********************************-->
		<!-- Begin: Navigation Bar Section -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- End Of: Navigation Bar Section -->

		<!--*************************** PAGE CONTENT SECTION **************************-->
		<div class="content">
			<!-- Begin: Page Content Section -->
			<c:if test="${userClickHome == true}">
				<%@include file="./home.jsp"%>
			</c:if>
			<!-- End Of: Page Content Section -->

			<!--*************************** ABOUT US SECTION *******************************-->
			<!-- Loads only when user clicks About -->
			<c:if test="${userClickAbout == true}">
				<%@include file="./about.jsp"%>
			</c:if>
			<!-- End Of: About Section -->

			<!--*************************** CONTACT US SECTION *****************************-->
			<!-- Loads only when user clicks Contact -->
			<c:if test="${userClickContact == true}">
				<%@include file="./contact.jsp"%>
			</c:if>
			<!-- End Of: Contact Section -->
			
			<!--*************************** List Of Products Section ***********************-->
			<!-- Loads only when user clicks show all products OR show category products -->
			<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="./listProducts.jsp"%>
			</c:if>
			<!-- End Of: Contact Section -->

		</div>

		<!--*************************** FOOTER SECTION ***********************************-->
		<!-- Begin: Footer Section-->
		<%@include file="./shared/footer.jsp"%>

		<!-- End Of: Footer Section -->



		<!-- JavaScript Files-->

		<!-- JQUERY -->
		<script src="${js}/jquery.js"></script>

		<!-- Bootstrap Core Javascript -->
		<script src="${js}/bootstrap.js"></script>

		<!-- Self Coded Javascript -->
		<script type="text/javascript" src="${js}/myapp.js"></script>
	</div>
</body>

</html>
