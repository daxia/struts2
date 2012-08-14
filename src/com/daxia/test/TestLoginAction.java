package com.daxia.test;
import com.daxia.login.action.*;
public class TestLoginAction {
	public static void main(String[] args){
		String username = "daxia";
		LoginAction la = new LoginAction();
		
		la.setUsername(username);
		System.out.println(la.getUsername() == username);
	}
}
