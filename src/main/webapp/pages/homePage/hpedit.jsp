<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
				<input id="title" type="text" name="title" style="height: 20px">
			</div>
			<div class="description">创建人：</div>
			<div class="description content">
				<input id="authorName" type="text" name="authorName" style="height: 21px">
			</div>

		</div>
		<div class="clearFix">
			<div class="description">创建时间：</div>
			<div class="description content">
				<input type="text" name="Phone" style="height: 21px">
			</div>
			<div class="description">邮箱：</div>
			<div class="description content">
				<input type="text" name="Email" style="height: 21px">
			</div>
		</div>

		<div class="clearFix">

			<div class="description">更新时间：</div>
			<div class="description content">
				<input class="easyui-datebox" type="text" id="txtLastUpdated"
					name="txtLastUpdated" />
			</div>

			<div class="description">父节点：</div>
			<div class="description content">
				<select id="box" class="easyui-combobox" name="box"
					style="width: 150px;">
					<option value="aaaa">电子商务</option>
					<option value="bbbb">经济管理</option>
					<option value="cccc">软件技术</option>
				</select>

			</div>

		</div>
		<div class="clearFix">
			<div>
				<div class="description">性别：</div>
				<div class="description content">
					<span>男</span>  
					<span> 女</span>
				</div>

			</div>
			<div class="description">爱好：</div>
			<div class="description content">
				<span>篮球</span> 
				<span>足球</span>
			</div>
		</div>
	</div>

	<div class="clearFix">
		<div style="text-align: center; padding-top: 10px">
			<a href="javascript:void(0)" class="easyui-linkbutton" id="btnAddOK"
				iconcls="icon-ok" onclick="btnAddOK()">确定</a> <a
				href="javascript:void(0)" class="easyui-linkbutton"
				iconcls="icon-cancel"
				onclick="javascript:$('#DivAdd').dialog('close')">关闭</a>
		</div>
	</div>