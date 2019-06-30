<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
    <link rel="icon" href="https://cdn-img.easyicon.net/favicon.ico">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="../../../css/simditor.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-dark bg-primary navbar-expand justify-content-center">
    <div class="collapse navbar-collapse " style="max-width: 800px">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link text-light" href="/index">首页</a>
            </li>
        </ul>
        <a class="nav-link text-light" href="/create">创建文章</a>
        <a class="nav-link text-light" href="/user">${user.name}</a>
        <a class="nav-link text-light" href="/logout">退出</a>
    </div>
</nav>
<div class="m-auto pt-3 pb-3" style="max-width: 800px;">
    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">
                文章管理
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">
                评论管理
            </a>
        </li>
    </ul>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">标题</th>
                    <th scope="col">编辑</th>
                    <th scope="col">删除</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${posts}" var="post">
                    <tr>
                        <td>${fn:substring(post.title, 0, 30)}...</td>
                        <td><a class="btn btn-success btn-sm" href="/user/edit?id=${post.id}" role="button">编辑</a></td>
                        <td><a class="btn btn-danger btn-sm" href="/user/delete?id=${post.id}" role="button">删除</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <c:forEach items="${comments}" var="comment">
            <div class="media text-muted pt-3">
                <p class="media-body pb-3 mb-0 ml-2 small lh-125 border-bottom border-gray">
                    <strong class="d-block text-gray-dark pb-1">
                        创建时间：
                        <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comment.createdAt}"/>
                        <a class="btn btn-danger btn-sm status" href="/comment/delete?id=${comment.id}" role="button" style="float: right;">删除</a>
                    </strong>
                    <span style="font-size: 15px;">
                        ${comment.content}
                    </span>
                </p>
            </div>
            </c:forEach>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</body>
</html>
