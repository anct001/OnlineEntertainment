<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="col-md-12 mt-5">
    <div class="row">
        <div class="col-md-7">
            <div class="card text-center">
                <div class="card-body">
                    <div class="row">
                        <iframe width="100%" height="315" src="${video.description}" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="row mt-3">
                        <p class="video-title">${video.title}</p>
                        <p class="video-view">Views: ${video.views}</p>
                        <p class="video-view">ID: ${video.videoId}</p>
                    </div>
                </div>
                <div class="card-footer text-right">
                    <a href="LikeVideo?videoId=${video.videoId}" class="btn btn-success">Like</a> 
                    <a href="ShareVideo?videoId=${video.videoId}" class="btn btn-info">Share</a>
                </div>
                <div class="video-description">
                    <p>Description:</p>
                    <p>${video.description}</p>
                </div>
            </div>
        </div>
        <div class="col-md-5" style="float: right;">
            <div class="card mb-3">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="${video.poster}" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <p class="video-title">${video.title}</p>
                            <p class="video-view">Views: ${video.views}</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Repeat the above structure for other videos -->
        </div>
    </div>
</div>
