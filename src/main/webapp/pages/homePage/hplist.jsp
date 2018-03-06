<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="toolbar" data-options="region:'north',title:'操作'" style="height: 30px; background: #F4F4F4;">
	<a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-add" onclick="addhp();" plain="true">添加</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-edit" onclick="edithp();" plain="true">修改</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" iconcls="icon-remove" onclick="removehp();" plain="true">删除</a>
</div>
<table id="hplist"></table>
<script type="text/javascript">
//新增
function addhp(){
	addTab("新增首页图片", "pages/homePage/hpadd.jsp", "icon-add", false);
}
//修改
function edithp(){
	addTab("信息修改", "pages/homePage/hpedit.jsp", "icon-edit", false);
}
//删除
function removehp(){
	var ids="";
	var rows=$('#hplist').datagrid('getSelections');
	for(var i=0;i<rows.length;i++){
		ids+=rows.id+","
	}
	ids=ids.substring(0,ids.length-1);
	console.log(ids);
	
	$.messager.confirm('Confirm','你确定删除选中的行?',function(r){
		    if (r){
		    	$.ajax({
		    		type:"POST",
		    		url:"${pageContext.request.contextPath}/hp/deleteList",
		    		data:{ids:ids},
		    		timeout:20000,
		    		cache:false,
		    		success:function(data){
		    			if(data>0){
		    				$.messager.alert('Warning','操作成功','info');
		    			}else{
		    				$.messager.alert('Warning','操作失败','info');
		    			}
		    		},
		    		error:function(){
		    			$.messager.alert('Warning','请求失败','info');
		    		}
		    	});
		 }
	});
}
//查看详情
function checkdetail(id){
	addTab("查看详情", "pages/homePage/hpdetail.jsp?id="+id, "icon-edit", false);
}




$('#hplist').datagrid({
	width : '100%',
	url : "${pageContext.request.contextPath}/hp/list",
	loadMsg : '数据加载中,请稍后……',
	pagination : true,
	singleSelect : false,
	rownumbers : true,
	nowrap : true,
	height : 'auto',
	fit : true,
	striped : true,
	idField : 'bondId',
	pageSize : 10,
	pageList : [ 10, 30, 50 ],
	columns : [ [ {
		field : 'title',
		title : '标题',
		width : 200,
		align : 'center'
	}, {
		field : 'authorName',
		title : '创建者',
		width : 200,
		align : 'center'
	}, {
		field : 'createTime',
		title : '创建时间',
		width : 200,
		align : 'center',
		formatter : function(value, row, index) {
			if (value != '' && value != null) {
				return value.substring(0,10);
			}
		}
	}, {
		field : 'picName',
		title : '图片名称',
		width : 200,
		align : 'center'
	}, {
		field : 'riskLevel',
		title : '风险等级',
		width : 200,
		align : 'center',
		formatter : function(value, row, index) {
			if (value == 1) {
				return '低风险';
			}
			if (value == 2) {
				return '中低风险';
			}
			if (value == 3) {
				return '中风险';
			}
			if (value == 4) {
				return '中高风险';
			}
			if (value == 5) {
				return '高风险';
			}
		}
	}, {
		field : 'status',
		title : '状态',
		width : 200,
		align : 'center',
		formatter : function(value, row, index) {
			if (value == '1') {
				return '启用';
			}
			if (value == '0') {
				return '禁用';
			}
		}
	}, {
		field : 'doIt',
		title : '操作',
		width : 200,
		align : 'center',
		formatter : function(value, row, index) {
			return '<button href="javascript:void(0)" class="easyui-linkbutton" plain="true" onclick="checkdetail('+row.id+')">详情</button>';
		}
	}] ]
});	
</script>
</body>
</html>