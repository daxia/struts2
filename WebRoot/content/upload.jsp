<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>upload</title>
</head>
<body>
	<s:form action="upload" method="post" enctype="multipart/form-data" >
		<s:textfield name="title" label="文件标题"></s:textfield>
		<s:file name="upload" label="选择文件"></s:file>
		<s:submit value="上传" align="left"></s:submit>
	</s:form>
	<s:fielderror/>
	<s:debug/>
</body>
</html>