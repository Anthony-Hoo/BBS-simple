<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://cdn-img.easyicon.net/favicon.ico">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>注册</title>
  </head>
  <body>
  <div class="m-auto" style="max-width: 300px;padding-top: 100px;">
    <h5>注册</h5>
    <form method="post" action="/register/store">
      <div class="form-group mt-3">
        <label for="name">新账号</label>
        <input type="text" class="form-control" id="name" name="name"  placeholder="Enter name">
      </div>
      <div class="form-group mt-3">
        <label for="password">新密码</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
      </div>
      <button type="submit" class="btn btn-block btn-primary mt-lg-4">注册</button>
      <a class="btn btn-block btn-secondary mt-lg-4" href="/login">登录</a>
    </form>
  </div>
  <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>