<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
    <title>首页</title>
    <!-- <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="icon" href="http://www.csust.edu.cn/dfiles/13047/pub/cslgdx/images/csust.ico">
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
</html> -->

<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>登录</title>
<style>
    * {
        margin: 0; padding: 0;
    }

    html, body {
        width: 100%;
        height: 100%;
        /* overflow: hidden; */
    }

    #container {
        overflow: auto;
        position: absolute;
        top: 0; left: 0; right: 0; bottom: 0;
    }

    #background_video {
        position: fixed;
        /* background-attachment:fixed; */
        top: 50%; left: 50%;
        transform: translate(-50%, -50%);

        object-fit: cover;
        height: 100%; width: 100%;
    }

    #video_cover {
        position: absolute;

        width: 100%; height: 100%;

        background: url('video_cover.jpeg') no-repeat;
        background-size: cover;
        background-position: center;
    }

    #video_controls {
        position: absolute;
        left: 50%;
        transform: translate(-50%, 0);
    }

    #play img {
        width: 100px;
    }
    #pause img {
        width: 90px;
    }
    #pause {
        display: none;
    }

    @media (min-width: 768px) {
        #video_controls {
            display: none;
        }
    }


</style>

<script src="https://use.typekit.net/nlq1kdt.js"></script>
<script>try{Typekit.load({ async: true });}catch(e){}</script>
</head>
<body>
<div class="m-auto" style="max-width: 300px;padding-top: 100px;">
<div id="container">
    <video id="background_video" loop muted></video>
    <div id="video_cover"></div>
    <div id="overlay"></div>

    <div id="video_controls">
  <span id="play">
    <img src="../../../img/play.png">
  </span>
        <span id="pause">
    <img src="../../../img/pause.png">
  </span>
    </div>
    <section id="main_content" style="overflow: auto;">
        <div id="head">
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
            <div style="overflow:scroll">
            <div class="m-auto" style="max-width: 800px; overflow:auto;">
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
    

    </section>
</div>

</div>
<script src="../../../js/bideo.js"></script>
<script src="../../../js/main_posts.js"></script>

<script>
    if (window.location.host.indexOf('github.io') !== -1 && window.location.protocol !== "https:") {
        window.location.protocol = "https";
    }
</script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>
