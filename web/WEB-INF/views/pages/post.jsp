<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${post.title}</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="icon" href="https://cdn-img.easyicon.net/favicon.ico">
</head>
<body>
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
    <div class="card mt-3">
        <div class="card-body">
            <h2 class="card-title">${post.title}</h2>
            <h6 class="card-subtitle mb-4 text-muted">
                @${post.userName}&nbsp;&nbsp;
                <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${post.createdAt}"/>
                </h6>
            <p class="card-text">${post.content}</p>
        </div>
    </div>
    <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">最近留言</h6>
        <c:forEach items="${comments}" var="comment">
            <div class="media text-muted pt-3">
                <p class="media-body pb-3 mb-0 ml-2 small lh-125 border-bottom border-gray">
                    <strong class="d-block text-gray-dark pb-1">
                        @${comment.userName}&nbsp;&nbsp;
                        <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${comment.createdAt}"/>
                    </strong>
                        ${comment.content}
                </p>
            </div>
        </c:forEach>
    </div>

    <div class="my-3 p-3 bg-white rounded box-shadow">
        <h6 class="border-bottom border-gray pb-2 mb-0">写评论</h6>
        <c:if test="${user.id > 0}">
            <form action="/comment/store" method="post">
                <div class="form-group">
                    <label for="textarea">输入内容</label>
                    <textarea class="form-control" name="content" id="textarea" placeholder="请输入内容后再提交" rows="3"></textarea>
                </div>
                <input type="hidden" name="post_id" value="${post.id}">
                <input type="submit" class="btn btn-primary" value="点击提交">
            </form>
        </c:if>
        <c:if test="${user.id == null}">
            <a class="btn btn-primary mt-3" href="/login">登录以评论</a>
        </c:if>
    </div>
</div>
</body>
</html>
