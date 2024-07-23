<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-md-9">
    <div class="row p-2">
        <c:forEach var="item" items="${videos}">
            <div class="col-md-3 mt-2">
                <div class="card text-center" onclick="redirectToDetail('${item.videoId}')" data-videoId="${item.videoId}">
                    <div class="card-body">
                        <img src="${ empty item.poster ? '/images/1.jpg': item.poster }" width="97%" max-height="35px" alt="" class="img-fluid">          
                        <div class="row border-top mt-2">
                            <b>${item.title}</b>
                        </div>
                        <a style="float: left; font-size: small; opacity: 0.6; color: red;">Views: ${item.views}</a>
                    </div>
                    <div class="card-footer">
                        <a href="LikeVideo?videoId=${item.videoId}" class="btn btn-success">Like</a> 
                        <a href="ShareVideo?videoId=${item.videoId}" class="btn btn-info">Share</a>
                        
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="row">
        <div class="col">
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<div class="col-md-3">
    <div class="row mt-3 mb-3">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-thumbs-up" aria-hidden="true"></i> Favorite
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Comedy Movie</li>
					<li class="list-group-item">Action Movie</li>
					<li class="list-group-item">Pop Music Video</li>
					<li class="list-group-item">Sports Video</li>
					<li class="list-group-item">Horror Movie</li>
					<li class="list-group-item">Animation Movie</li>
					<li class="list-group-item">Vlog Video</li>
					<li class="list-group-item">Beauty Tutorial Video</li>

                </ul>
            </div>
        </div>
    </div>
</div>

<script>
    function redirectToDetail(videoId) {
        console.log("Clicked on card with videoId: " + videoId);
        window.location.href = 'VideoDetailServlet?videoId=' + videoId;
    }
</script>


