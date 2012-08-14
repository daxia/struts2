<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<sx:head />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="js/user.js"></script>
<script type="text/css">

</script>
<body>
	register:
	<br>
	<s:form name="register" action="register" method="post" enctype="multipart/form-data">
		<!--username  -->
		<s:textfield label="用户名" name="username" id="username"
			tooltip="请输入您的用户名!" />
		<!--password  -->
		<s:password label="密码" name="password" id="password"
			tooltip="请输入您的密码!" />
		<!--confirm password -->
		<s:password label="确认密码" name="checkpassword" id="checkpassword"
			tooltip="请确认您的密码!" />
		<!--sex  -->
		<s:radio label="性别" name="sex" id="sex"
			list="#{'male':'male','female':'female'}" listKey="key"
			listValue="value" value="#{'male':'male'}"
			tooltip="请选择您的性别!" />
		<!--email  -->
		<s:textfield label="邮箱" name="email" id="email"
			tooltip="请输入您的邮箱!" />
		<!--address  -->
		<s:textfield label="地址" name="address" id="address"
			tooltip="请输入您的地址!" />
		<!-- birthday -->
		<sx:datetimepicker label="生日" name="birthday" id="birthday"
			displayFormat="yyyy-MM-dd" value="%{'today'}"
			tooltip="请选择您的生日！"></sx:datetimepicker>
		<!--telephone  -->
		<s:textfield label="手机号码" name="telephone" id="telephone"
			tooltip="请输入您的手机号码!" />
		<!--submit  -->
		<s:submit value="submit" align="left" id="submit" onclick="check()"/>
		<!--reset  -->
		<s:reset value="reset" align="left" id="reset" />

	</s:form>
	<s:debug></s:debug>
	<s:fielderror/>
	<br>
</body>
</html>
