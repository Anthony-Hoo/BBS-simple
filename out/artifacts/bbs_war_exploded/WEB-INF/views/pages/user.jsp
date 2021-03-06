<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
    <link rel="icon" href="http://www.csust.edu.cn/dfiles/13047/pub/cslgdx/images/csust.ico">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="../../../css/simditor.css" rel="stylesheet">
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
    <video id="background_video" loop muted style="z-index:-1"></video>
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
    <div style="opacity:1; background-color:white " >
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col" >标题</th>
                    <th scope="col" >编辑</th>
                    <th scope="col" >删除</th>
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
</div>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</div>


</section>
</div>

</div>
<script s
<script src="../../../js/bideo.js"></script>
<script src="../../../js/main_user.js"></script>

<script>
    if (window.location.host.indexOf('github.io') !== -1 && window.location.protocol !== "https:") {
        window.location.protocol = "https";
    }
</script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</body>
</html>
