<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/hp/add" enctype="multipart/form-data">
	标题：<input name="title" type="text" /></br>
	上传图片：<input id="picture" name="file" type="file" accept="image/*"/>
	<input id="fileName" name="picName" type="hidden">
	<input type="submit" value="提交">
</form>

<script type="text/javascript">
	$('#picture').change(function(){
		var pos=$('#picture').val().lastIndexOf("\\")
		var fileName=$('#picture').val().substring(pos+1);
		$('#fileName').val(fileName);
	});

</script>
</body>
</html>