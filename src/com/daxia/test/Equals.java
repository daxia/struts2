package com.daxia.test;

public class Equals {
	public static void main(String[] args){
//		System.out.println(str.equals(new String("abc")));
//		System.out.println(str=="abc");
		EqualTest et = new EqualTest();
		 et.setStr(new String("daxia"));
		 String daxia = et.getStr();
		 System.out.println(daxia == "daxia");  //compare the references of the objects,there are two "daxia" String object
		 System.out.println(daxia.equals("daxia")); //compare the contents of the objects,the two object contents all are "daxia"
		
	}
}

class EqualTest{
	String str ;
	public void setStr(String str){
		this.str =  str;
	
	}
	public String getStr(){
		return str;
	}
}
