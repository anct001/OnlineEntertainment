<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${page.title }</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Custom styles can be added here */
        /* Example: */
        /* .navbar-brand {
            font-family: 'Arial', sans-serif;
            font-weight: bold;
        } */
    </style>
</head>
<body>
    <header class="bg-light py-4">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-6">
                    <h1 class="font-weight-bold mb-0">Online Entertainment</h1>
                </div>
                <div class="col-md-6 text-right">
                    <img src="../images/Abcxyz.jpg" alt="Logo" class="mr-4">
                </div>
            </div>
        </div>
    </header>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="Homepage">Online Entertainment</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Homepage"><i class="fa fa-home"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs"><i class="fa fa-info-circle"></i> About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs"><i class="fa fa-envelope"></i> Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MyFavorites"><i class="fa fa-heart"></i> My Favorites</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user"></i> My Account
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <c:if test="${ ! isLogin }">
                                <a class="dropdown-item" href="Login">Login</a>
                                <a class="dropdown-item" href="ForgotPassword">Forgot Password</a>
                                <a class="dropdown-item" href="Registration">Register</a>
                            </c:if>
                            <c:if test="${isLogin }">
                                <a class="dropdown-item" href="Logoff">Logoff</a>
                                <a class="dropdown-item" href="ChangePassword">Change Password</a>
                                <a class="dropdown-item" href="EditProfile">Edit Profile</a>
                            </c:if>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="container py-4">
        <jsp:include page="${page.contentUrl }"></jsp:include>
    </section>

    <footer class="bg-light py-4">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center">
                    <p class="mb-0"><strong>FPT Poly &copy;2024 All rights reserved.</strong></p>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <c:if test="${not empty page.scriptUrl }">
        <jsp:include page="${page.scriptUrl }"></jsp:include>
    </c:if>
</body>
</html>
