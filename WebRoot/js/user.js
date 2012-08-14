//use jquery
function check() {
	//alert("wang");
	var username = $("#username").attr("value");
	var password = $("#password").attr("value");
	var checkpassword = $("#checkpassword").attr("value");
	//alert(username);
	console.log(username);
	if (username == null) {
		alert("用户名不能为空");
	}
	if (password == null) {
		alert("密码不能为空");
	}

	if (password != checkpassword) {
		alert("必须确保密码与确认密码一致");
	}
}