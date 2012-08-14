package com.daxia.login.action;

public class LoginAction {
	private String username;
	private String password;

	// setter and getter
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}

	public String execute() throws Exception {
			return "success";
	}
}
