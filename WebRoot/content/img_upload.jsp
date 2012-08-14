<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>img_upload.jsp</title>
   
  </head>
  
  <body>
    <s:form action="imageUpload" method="post" enctype="multipart/form-data">
		<s:file lable="请选择上传图片" name="imgUpload"></s:file>
		<s:submit value="上传"></s:submit>
	</s:form>
  </body>
</html>
