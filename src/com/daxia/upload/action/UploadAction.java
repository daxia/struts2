package com.daxia.upload.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport{

	private String titleString;
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	
	public String getTitleString() {
		return titleString;
	}
	public void setTitleString(String titleString) {
		this.titleString = titleString;
	}
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}
	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	public String getSavePath() {
		return  savePath = ServletActionContext.getServletContext().getRealPath(savePath);
	}
	public void setSavePath(String savaPath) {
		this.savePath = savaPath;
	}
	
	Logger log4j = Logger.getLogger(UploadAction.class);
	
	public String execute() throws Exception{
		//log4j.debug("wang");
		FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + getUploadFileName());
		//log4j.debug("00000");
		FileInputStream fis = new FileInputStream(getUpload());
		// log4j
		//log4j.debug("11111");
		
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = fis.read(buffer)) > 0) {
			fos.write(buffer, 0 , len);
		}
		return SUCCESS;
	}
	
	
}
