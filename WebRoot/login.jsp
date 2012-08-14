<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 自动提示struts2标签 -->
<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>login.jsp</title>

</head>

<body>
	user login:
	<br>
	<form action="login.action" method="post">
		username 
		<input type="text" name="username" /><br> 
		password 
		<input 	type="password" name="password" /><br> 
		<input type="submit" value="submit" onclick="check()"/>
	    <input type="reset" value="reset">
	</form>
	<s:fielderror/>
</body>
</html>
