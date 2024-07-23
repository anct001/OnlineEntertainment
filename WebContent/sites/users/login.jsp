<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="offset-4 col-4">
	<form action="" method="post">
		<div class="card">
			<div class="card-header">
				<b>Login to System</b>
			</div>
			<div class="card-body">
			<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						class="form-control" name="username" id="username"
						aria-describedby="usernamehelpId" placeholder="Username">
					<small id="usernamehelpId" class="form-text text-muted">Username
						is required</small>
				</div>
				<div class="form-group">
					<label for="">Password</label> <input type="text"
						class="form-control" name="password" id="password"
						aria-describedby="passwordhelpId" placeholder="password">
					<small id="passwordhelpId" class="form-text text-muted">Password
						is required</small>
				</div>
				<div class="form-check form-check-inline">
					<label> <input class="form-check-input" type="checkbox"
						name="remember">Remember me
					</label>
				</div>

			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Login</button>
			</div>
		</div>
	</form>
</div>