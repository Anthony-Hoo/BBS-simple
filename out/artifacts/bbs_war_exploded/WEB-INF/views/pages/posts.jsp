<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="icon" href="https://cdn-img.easyicon.net/favicon.ico">
</head>
<body>
<div>
<nav class="navbar navbar-dark bg-primary navbar-expand justify-content-center">
    <div class="collapse navbar-collapse " style="max-width: 800px">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link text-light" href="/index">首页</a>
            </li>
        </ul>
        <c:if test="${user.id > 0}">
            <a class="nav-link text-light" href="/create">创建文章</a>
            <a class="nav-link text-light" href="/user">${user.name}</a>
            <a class="nav-link text-light" href="/logout">退出</a>
        </c:if>
        <c:if test="${user.id == null}">
            <a class="nav-link text-light" href="/login">创建文章</a>
            <a class="nav-link text-light" href="/login">登录</a>
        </c:if>
    </div>
</nav>
<div class="m-auto" style="max-width: 800px">
    <c:forEach items="${posts}" var="post">
        <div class="card mt-3">
            <div class="card-body">
                <h5 class="card-title">${post.title}</h5>
                <p class="card-text">
                        <%--<%=%>--%>
                        ${fn:substring(post.content, 0, 100)}...</p>
                <a href="/post?id=${post.id}" class="btn btn-primary">查看详情</a>
            </div>
        </div>
    </c:forEach>
</div>
</div>
</body>
</html>
