<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://cdn-img.easyicon.net/favicon.ico">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>登录</title>
    <style>
        * {
            margin: 0; padding: 0;
        }

        html, body {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        #container {
            overflow: hidden;
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
        }

        #background_video {
            position: absolute;

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

        /* Demo page specific styles */

        body {
            text-align: center;
            font-family: 'proxima-nova', Helvetica;
        }

        #container {
            height: 100%;
        }

        #overlay {
            position: absolute;
            top: 0; right: 0; left: 0; bottom: 0;
            background: rgba(0,0,0,0.5);
        }

        #main_content {
            z-index: 2;
            position: relative;
            display: inline-block;

            /* Vertical center */
            top: 50%;
            transform: translateY(-50%);
        }

        #main_content h1 {
            text-transform: uppercase;
            font-weight: 600;
            font-family: 'proxima-nova-condensed', Helvetica;
            color: #fff;
            font-size: 35px;
        }

        #main_content .sub_head {
            color: rgba(255,255,255,0.5);
            font-size: 18px;
        }

        #main_content .info {
            color: rgba(255,255,255,0.5);
            font-size: 12px;
            margin-top: 10px;
        }

        #links {
            margin-top: 50px;
        }

        #links a {
            border: 2px solid rgba(255,255,255,0.20);
            border-radius: 61px;
            font-size: 12px;
            color: #FFFFFF;
            letter-spacing: 1px;
            text-decoration: none;
            text-transform: uppercase;
            padding: 10px 25px;
            display: inline-block;
            margin-right: 15px;
        }

        #footer {
            position: absolute;
            bottom: 0; left: 0; right: 0;
        }
        #footer a {
            color: rgba(255,255,255,0.5);
            text-decoration: none;
            margin: 10px;
            font-size: 12px;
        }
        #footer a:first-child {
            float: left;
        }
        #footer a:last-child {
            float: right;
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
        <section id="main_content">
            <div id="head">
                <h5 style="color:#FFFFFF";>登录</h5>
                <form method="post" action="/login/show">
                    <div class="form-group mt-3">
                        <label for="name" style="color:#FFFFFF">账号</label>
                        <input type="text" class="form-control" id="name" name="name"  placeholder="Enter name">
                    </div>
                    <div class="form-group mt-3">
                        <label for="password" style="color:#FFFFFF" >密码</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-block btn-primary mt-lg-4">登录</button>
                    <a class="btn btn-block btn-secondary mt-lg-4" href="/register">注册</a>
                </form>
            </div>


        </section>
    </div>

</div>
    <script src="../../../js/bideo.js"></script>
    <script src="../../../js/main.js"></script>

    <script>
        if (window.location.host.indexOf('github.io') !== -1 && window.location.protocol !== "https:") {
            window.location.protocol = "https";
        }
    </script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</body>
</html>