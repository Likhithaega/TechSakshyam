<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_components/allcss.jsp"%>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid bg-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h4>Login</h4>
					</div>
					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg %></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>

					<div class="card-body">
						<form action="LoginServlet" method="post">

							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="form-group">

								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">login</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>


	<div class="container-fluid bg-dark footer-pos">
		<p class="text-center text-white">Note: Any errors occur then
			contact Btech roomies. Design and developed by 304 buddies</p>
		<p class="text-center text-white">All rights Reserved
			@Btechbuddies-2020-24</p>

	</div>


</body>
</html>