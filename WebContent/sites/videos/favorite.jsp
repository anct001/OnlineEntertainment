<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-md-9">
    <div class="row p-2">
        <c:forEach var="item" items="${videos}">
            <div class="col-md-4 mt-2">
                <div class="card text-center">
                    <div class="card-body">
                        <img src="${ empty item[5] ? '/images/1.jpg': item[5] }" width="97%" max-height="35px" alt="" class="img-fluid">
                        <div class="row border-top mt-2">
                            <b>${item[3]}</b>
                        </div>
                    </div>
                    <div class="card-footer">
	                    <div class="row">
	                        <form action="FavoriteVideo" method="post">
	                            <input type="hidden" name="action" value="unlike">
	                            <input type="hidden" name="FavoriteId" value="${item[0]}">
	                            <button type="submit" class="btn btn-success">Unlike</button>
	                        </form>
	                        <a href="ShareVideo?videoId=${item[2]}" class="btn btn-info">Share</a>
	                    </div>
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
                    <c:forEach var="item" items="${videos}">
                        <li class="list-group-item">${item[3]}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>
