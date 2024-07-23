<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${page.title}</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Custom CSS */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            padding-top: 30px;
            padding-bottom: 30px;
            max-height: 40px;
        }
        .navbar-brand img {
            max-height: 25px;
            margin-right: 10px;
        }
        .jumbotron {
            background-color: #343a40;
            color: white;
            padding: 100px 0;
            margin-bottom: 0;
        }
        .navbar {
            background-color: #e3f2fd;
        }
        .nav-link {
            color: #007bff;
        }
        .nav-link:hover {
            color: #0056b3;
        }
        .footer {
		    position: relative;
		    width: 100%;
		    background-color: #343a40;
		    color: white;
		    padding: 20px 0;
		    text-align: center;
		}
		
		.main-content {
		    padding-bottom: 450px; /* Adjust as needed */
		}
        
    </style>
</head>
<body>
    <main class="container">
        <header>
            <div class="jumbotron text-center">
                <h1 class="display-4">Online Entertainment</h1>
                <p class="lead">Stream your favorite videos anytime, anywhere!</p>
            </div>
        </header>
        <nav class="navbar navbar-expand-md navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavId"
                aria-controls="collapsibleNavId" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="Homepage"><i class="fa fa-home" aria-hidden="true"></i> Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutUsServlet"><i class="fa fa-info-circle" aria-hidden="true"></i> Giới thiệu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contactServlet"><i class="fa fa-envelope" aria-hidden="true"></i> Liên hệ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="FavoriteVideo"><i class="fa fa-heart" aria-hidden="true"></i> Video yêu thích</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user" aria-hidden="true"></i> Tài khoản
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownId">
                            <c:if test="${!isLogin}">
                                <a class="dropdown-item" href="Login">Đăng nhập</a>
                                <a class="dropdown-item" href="ForgotPassword">Quên mật khẩu</a>
                                <a class="dropdown-item" href="Registration">Đăng ký</a>
                            </c:if>
                            <c:if test="${isLogin}">
                                <a class="dropdown-item" href="Logoff">Đăng xuất</a>
                                <a class="dropdown-item" href="ChangePassword">Đổi mật khẩu</a>
                                <a class="dropdown-item" href="EditProfile">Chỉnh sửa hồ sơ</a>
                            </c:if>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div>
	        <section class="row">
	            <jsp:include page="${page.contentUrl}"></jsp:include>
	        </section>
        </div>
        <footer class="footer mt-auto mt-5">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-12">
		                <p>© 2024 Online Entertainment. All rights reserved.</p>
		            </div>
		        </div>
		    </div>
		</footer>

    </main>

	
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <c:if test="${not empty page.scriptUrl}">
        <jsp:include page="${page.scriptUrl}"></jsp:include>
    </c:if>
</body>
</html>
