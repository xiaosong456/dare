<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.main {
	border-right-width: 10px;
	border-right-style: solid;
	border-right-color: #bebcbc;
	border-bottom-color: #bebcbc;
	border-bottom-style: solid;
	border-bottom-width: 1px;
}

.description {
	width: 24%;
	height: 36px;
	background-color: #F1F6FF;
	border: 1px solid #bebcbc;
	border-bottom-width: 0px;
	border-right-width: 0px;
	line-height: 36px;
	padding-left: 12px;
	font-family: 微软雅黑;
	float: left;
}

.description.content {
	background-color: #FAFCFF;
	width: 24%;
}

.clearFix:after {
	clear: both; /*添加清除浮动属性*/
	display: block; /*将它设为块状元素*/
	content: "."; /*这个块状元素的内容为一个 . 其实也可以不设，因为下面要隐藏掉它*/
	visibility: hidden; /*将它隐藏掉*/
	height: 0; /*将它高度设为0px*/
	line-height: 0; /*将它行高设为0px;*/
}
</style>  
	<div class="main">
		<div class="clearFix">
			<div class="description">标题：</div>
			<div class="description content">
				<input id="title" type="text" name="title" style="height: 20px"  readonly="readonly">
			</div>
			<div class="description">创建人：</div>
			<div class="description content">
				<input id="authorName" type="text" name="authorName" style="height: 21px"  readonly="readonly">
			</div>

		</div>
		<div class="clearFix">
			<div class="description">创建时间：</div>
			<div class="description content">
				<input id="createTime" type="text" name="createTime" style="height: 21px"  readonly="readonly">
			</div>
			<div class="description">图片名称：</div>
			<div class="description content">
				<input id="picName" type="text" name="picName" style="height: 21px"  readonly="readonly">
			</div>
		</div>

		<div class="clearFix">
			<div class="description" style="width:99%;">图片预览：</div>
			<div class="description content" style="width:100%;height:100%;float:right;">
				<img id="picture" style="width:100%"/>
			</div>
	</div>
 </div>
	
	<script type="text/javascript">
	var id=<%=request.getParameter("id")%>;
		$.ajax({
			type:"POST",
    		url:"${pageContext.request.contextPath}/hp/detail",
    		data:{id:id},
    		timeout:20000,
    		cache:false,
    		success:function(data){
    			console.log(data.picture);
    			$('#title').val(data.title);
    			$('#authorName').val(data.authorName);
    			$('#createTime').val(data.createTime);
    			$('#picName').val(data.picName);
    			$('#picture').attr("src","${pageContext.request.contextPath}/hp/img?id="+id);
    		},
    		error:function(){
    			$.messager.alert('Warning','请求失败','info');
    		}
		});
	</script>