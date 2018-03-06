<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录界面</title>

    <link href="css/login.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div class="login">
    <div class="box png">
        <div class="logo png"></div>
        <div class="input">
        <form id="loginform">
            <div class="log">
                <div class="name">
                    <label>用户名</label><input type="text" class="text" id="loginName" placeholder="用户名" name="loginName" tabindex="1">
                </div>
                <div class="pwd">
                    <label>密　码</label><input type="password" class="text" id="password" placeholder="密码" name="password" tabindex="2">
                    <input type="button" onclick="window.confirm()" class="submit" tabindex="3" value="登录">
                    <input type="button" class="register" tabindex="3" value="注册" onclick="register();">
                    <div class="check"></div>
                </div>
                <div class="tip"></div>
            </div>
         </form>
        </div>
    </div>
    <div class="air-balloon ab-1 png"></div>
    <div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>

<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>


<!--[if IE 6]>
<script src="js/DD_belatedPNG.js" type="text/javascript"></script>
<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    <p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>
</div>

<script type="text/javascript">
    function confirm(){
    	if(validate("password") && validate("loginName")){
    		$.ajax({
                url: "${pageContext.request.contextPath}/userinfo/login",
                type:"post",
                data:$('#loginform').serialize(),
                success: function (data) {
                    if (data>0) {
                    	  window.location.href="${pageContext.request.contextPath}/index.jsp"
                    }
                    else{
                        alert("用户名或密码错误");
                    }
                },
                error:function(){
                    alert('请求失败');
                }
            });
    	}else{
    		alert("用户名或密码不能为空");
    	}
    	
    }

    // 处理回车键，点击回车提交登陆信息
    document.onkeydown=function(event){
        e = event ? event :(window.event ? window.event : null);
        if(e.keyCode==13){
            //执行的方法
            confirm();
        }
    }


    function register(){
    	 window.location.href="${pageContext.request.contextPath}/register.jsp"
    }

  //验证是否为空
    function validate(id){
    	if($("#"+id).val()==''){
    		return false;
    	}else{
    		return true;
    	}
    }
</script>

</body>
</html>