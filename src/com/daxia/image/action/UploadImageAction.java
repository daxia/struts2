package com.daxia.image.action;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class UploadImageAction extends ActionSupport {
	private File userImage;
	private String userImageContentType;
	private String userImageFileName;

	public String execute() {
		return SUCCESS;
	}
	
	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	
}
