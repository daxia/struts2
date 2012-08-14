<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>success！</title>


</head>

<body>
	welcome! <%=(String)request.getAttribute("username") %> ! you add an account success.
	<br>
	<%--<%
		Thread thread = new Thread();
		thread.start();
		Thread.sleep(3000L);
	%>
	--%>
	<%
		//response.sendRedirect("register.jsp");
	%>
</body>
</html>
