<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
    /* Custom CSS */
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
    }
    .jumbotron {
        background-color: #343a40;
        color: white;
        text-align: center;
        padding: 100px 0;
        margin-bottom: 0;
    }
    .contact-form {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
</style>

<div class="col-md-12">
    <div class="contact-form">
        <form id="contact-form">
            <div class="form-group">
                <label for="name">Họ và Tên:</label>
                <input type="text" class="form-control" id="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" required>
            </div>
            <div class="form-group">
                <label for="message">Nội dung tin nhắn:</label>
                <textarea class="form-control" id="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Gửi</button>
        </form>
        <!-- Thêm phần tử cho thông báo -->
        <div id="success-message" class="alert alert-success mt-3" style="display: none;">
            Gửi thành công!
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        $("#contact-form").submit(function(e){
            console.log("Form submitted!"); // Kiểm tra xem sự kiện submit được kích hoạt hay không
            // Hiển thị thông báo gửi thành công
            $("#success-message").show();
            e.preventDefault(); // Ngăn chặn gửi mặc định của form
        });
    });

</script>
