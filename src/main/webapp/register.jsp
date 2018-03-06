<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link type="text/css" rel="stylesheet" href="css/register.css">
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<body class="login_bj">
	<div class="zhuce_body">
		<div class="logo">
			<div class="zhuce_kong">
				<div class="zc">
					<div class="bj_bai">
						<h3>欢迎注册</h3>
						<form id="userform" action="${pageContext.request.contextPath }/userinfo/addUser" method="post">
							<input id="loginName" name="loginName" type="text" class="kuang_txt phone" placeholder="用户名"> 
							<input id="userName" name="userName" type="text" class="kuang_txt phone" placeholder="真实姓名"> 
							<input id="mobile" name="mobile" type="text" class="kuang_txt phone" placeholder="手机号"> 
							<input id="email" name="email" type="text" class="kuang_txt email" placeholder="邮箱"> 
							<input id="password" name="password" type="password" class="kuang_txt possword" placeholder="密码">
							<input id="repassword" name="repassword" type="password" class="kuang_txt possword" placeholder="重复密码"> 
							<div>
								<input name="" type="checkbox" value="" id="check"><span>已阅读并同意
								<a href="javascript:;" target="_blank"><span class="lan">《XXXXX使用协议》</span></a></span>
							</div>
							<input name="注册" type="button" class="btn_zhuce" value="注册" onclick="register();">

						</form>
					</div>
					<div class="bj_right">
						<p>使用以下账号直接登录</p>
						<a href="#" class="zhuce_qq">QQ注册</a> 
						<a href="#" class="zhuce_wb">微博注册</a>
						<a href="#" class="zhuce_wx">微信注册</a>
						<p>
							已有账号？<a href="${pageContext.request.contextPath }/login.jsp">立即登录</a>
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
	
<script type="text/javascript">
function register(){
	if(validate("loginName")&&validate("password")&&validate("repassword")){
		if(validatepassword("password","repassword")){
			 $.ajax({
		         type: "POST",//方法类型
		         dataType: "json",//预期服务器返回的数据类型
		         url: "${pageContext.request.contextPath }/userinfo/addUser" ,//url
		         data: $('#userform').serialize(),
		         success: function (result) {
		         	console.log(result);//打印服务端返回的数据(调试用)
		           	if (result>0) {
		               alert("已经提交审核，审核通过后才能登录");
		            } ;
		          },
		         error : function() {
		            alert("注册失败！");
		          }
		     });
		}else{
			alert("密码不一致");
		}
	}else{
		alert("必填项不能空");
	}
}

//验证是否为空
function validate(id){
	if($("#"+id).val()==''){
		return false;
	}else{
		return true;
	}
}
//验证密码是否一致
function validatepassword(pwd1,pwd2){
	if($('#'+pwd1).val()==$('#'+pwd2).val()){
		return true;
	}else{
		return false;
	}
}
</script>
</body>
