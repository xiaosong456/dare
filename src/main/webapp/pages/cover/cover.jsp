<%--
  Created by IntelliJ IDEA.
  User: lxs
  Date: 2018/2/11
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/metro.css" rel="stylesheet" type="text/css" />
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.plugins.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/metro.js"></script>
</head>
<div class="metro-layout horizontal">
    <div class="header">
        <div class="controls">
            <span class="down" title="Scroll down"></span>
            <span class="up" title="Scroll up"></span>
            <span class="next" title="向右滚动"></span>
            <span class="prev" title="向左滚动"></span>
            <span class="toggle-view" title="切换滚动方式"></span>
        </div>
    </div>

    <div class="content clearfix">
        <div class="items">
            <a class="box" href="#"><span>Mail</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/mail.png" /></a>
            <a class="box" href="#" style="background: #6b6b6b;"><span>Settings</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/settings.png" /></a>
            <a class="box" href="#" style="background: #43b51f;"><span>Make a call</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/phone.png" /></a>
            <a class="box width2 height2" href="#"><span>Photos</span><img class="cover" src="${pageContext.request.contextPath}/images/cover/gallery.jpg" /></a>
            <a class="box" href="#" style="background: #00aeef;"><span>Music</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/music.png" /></a>
            <a class="box" href="#" style="background: #f58d00;"><span>Firefox</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/firefox.png" /></a>
            <a class="box" href="#" style="background: #640f6c;"><span>Yahoo</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/yahoo.png" /></a>
            <a class="box height2" href="#" style="background: #d32c2c;"><span>GMail</span><img class="icon big" src="${pageContext.request.contextPath}/images/cover/gmail.png" /></a>
            <a class="box" href="#" style="background: #3c5b9b;"><span>Facebook</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/facebook.png" /></a>
            <a class="box" href="#" style="background: #ffc808;"><span>Winamp</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/winamp.png" /></a>
            <a class="box" href="#" style="background: #00a9ec;"><span>Tasks</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/tasks.png" /></a>
            <a class="box height2" href="#" style="background: #4c5e51;"><span>DeviantART</span><img class="icon big" src="${pageContext.request.contextPath}/images/cover/deviantart.png" /></a>
            <a class="box" href="#" style="background: #f874a4;"><span>Dribbble</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/dribbble.png" /></a>

            <a class="box" href="#"><span>Mail</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/mail.png" /></a>
            <a class="box" href="#" style="background: #6b6b6b;"><span>Settings</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/settings.png" /></a>
            <a class="box" href="#" style="background: #43b51f;"><span>Make a call</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/phone.png" /></a>
            <a class="box width2 height2" href="#"><span>Photos</span><img class="cover" src="${pageContext.request.contextPath}/images/cover/gallery.jpg" /></a>
            <a class="box" href="#" style="background: #00aeef;"><span>Music</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/music.png" /></a>
            <a class="box" href="#" style="background: #f58d00;"><span>Firefox</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/firefox.png" /></a>
            <a class="box" href="#" style="background: #640f6c;"><span>Yahoo</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/yahoo.png" /></a>
            <a class="box height2" href="#" style="background: #d32c2c;"><span>GMail</span><img class="icon big" src="${pageContext.request.contextPath}/images/cover/gmail.png" /></a>
            <a class="box" href="#" style="background: #3c5b9b;"><span>Facebook</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/facebook.png" /></a>
            <a class="box" href="#" style="background: #ffc808;"><span>Winamp</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/winamp.png" /></a>
            <a class="box" href="#" style="background: #00a9ec;"><span>Tasks</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/tasks.png" /></a>
            <a class="box height2" href="www.maitianquan.com/" style="background: #4c5e51;"><span>DeviantART</span><img class="icon big" src="${pageContext.request.contextPath}/images/cover/deviantart.png" /></a>
            <a class="box" href="#" style="background: #f874a4;"><span>Dribbble</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/dribbble.png" /></a>

            <a class="box" href="#"><span>Mail</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/mail.png" /></a>
            <a class="box" href="#" style="background: #6b6b6b;"><span>Settings</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/settings.png" /></a>
            <a class="box" href="#" style="background: #43b51f;"><span>Make a call</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/phone.png" /></a>
            <a class="box width2 height2" href="#"><span>Photos</span><img class="cover" src="${pageContext.request.contextPath}/images/cover/gallery.jpg" /></a>
            <a class="box" href="#" style="background: #00aeef;"><span>Music</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/music.png" /></a>
            <a class="box" href="#" style="background: #f58d00;"><span>Firefox</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/firefox.png" /></a>
            <a class="box" href="#" style="background: #640f6c;"><span>Yahoo</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/yahoo.png" /></a>
            <a class="box height2" href="#" style="background: #d32c2c;"><span>GMail</span><img class="icon big" src="${pageContext.request.contextPath}/images/cover/gmail.png" /></a>
            <a class="box" href="#" style="background: #3c5b9b;"><span>Facebook</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/facebook.png" /></a>
            <a class="box" href="#" style="background: #ffc808;"><span>Winamp</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/winamp.png" /></a>
            <a class="box" href="#" style="background: #00a9ec;"><span>Tasks</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/tasks.png" /></a>
            <a class="box height2" href="www.maitianquan.com/" style="background: #4c5e51;"><span>DeviantART</span><img class="icon big" src="${pageContext.request.contextPath}/images/cover/deviantart.png" /></a>
            <a class="box" href="#" style="background: #f874a4;"><span>Dribbble</span><img class="icon" src="${pageContext.request.contextPath}/images/cover/dribbble.png" /></a>
        </div>
    </div>
</div>


