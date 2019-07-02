<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="nav-link text-light" href="/user?id=${user.id}">${user.name}</a>
        <a class="nav-link text-light" href="/logout">退出</a>
    </div>
</nav>
    <div class="m-auto" style="max-width: 800px" style="z-index:99999">
        <form action="/store" method="post" class="mt-3" >
            <div class="form-group">
                <label for="title">文章标题</label>
                <input type="text" class="form-control" id="title"  name="title" placeholder="Enter title">
            </div>
            <h6>文章内容</h6>
            <div class="mt-3 mb-3">
                <%--<textarea name="content"></textarea>--%>
                <textarea id="editor" name="content" placeholder="内容" autofocus></textarea>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-primary" value="提交文章">
            </div>
        </form>
    </div>
<script src="../../../js/jquery.min.js" type="text/javascript"></script>
<script src="../../../js/module.js" type="text/javascript"></script>
<script src="../../../js/hotkeys.js" type="text/javascript"></script>
<script src="../../../js/simditor.js" type="text/javascript"></script>
<script src="../../../js/mobilecheck.js" type="text/javascript"></script>

<%--<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>--%>
<script type="text/javascript">
    var editor = new Simditor({
        textarea: $('#editor'),
        toolbar: [
            'title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale',
            'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link',
            'hr', '|', 'alignment'
        ],
        placeholder: '写点什么...',
        //optional options
    });
</script>
 </div>


</section>
</div>

</div>
<script src="../../../js/bideo.js"></script>
<script src="../../../js/main_create.js"></script>

<script>
    if (window.location.host.indexOf('github.io') !== -1 && window.location.protocol !== "https:") {
        window.location.protocol = "https";
    }
</script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

</body>
</html>
