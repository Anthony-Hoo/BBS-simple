<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="nav-link text-light" href="/user?id=${user.id}">${user.name}</a>
        <a class="nav-link text-light" href="/logout">退出</a>
    </div>
</nav>
<div class="m-auto" style="max-width: 800px">
    <form action="/update" method="post" class="mt-3" >
        <div class="form-group">
            <label for="title">文章标题</label>
            <input type="text" class="form-control" id="title" placeholder="Enter title"
                   name="title" value="${post.title}">
        </div>
        <h6>文章内容</h6>
        <div class="mt-3 mb-3">
            <textarea id="editor" placeholder="内容" autofocus
                      name="content">${post.content}</textarea>
        </div>
        <input type="hidden" name="id" value="${post.id}">
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
    });
</script>
</body>
</html>
