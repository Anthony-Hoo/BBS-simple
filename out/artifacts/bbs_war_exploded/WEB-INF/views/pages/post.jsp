<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${post.title}</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="icon" href="http://www.csust.edu.cn/dfiles/13047/pub/cslgdx/images/csust.ico">
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
    <section id="main_content" >    
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
<div >
<div class="m-auto" style="max-width: 800px" style="z-index:999999">
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
    <div class="my-3 p-3 bg-white rounded box-shadow" style="z-index:999999">
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

    <div class="my-3 p-3 bg-white rounded box-shadow" style="z-index:999999">
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

</body>
</html>
