package com.usc.model;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午5:28:42 性别
 */
public class Gender {

	private String code;
	private String genderName;

	public Gender() {

	}

	public Gender(String code, String genderName) {
		this.code = code;
		this.genderName = genderName;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getGenderName() {
		return genderName;
	}

	public void setGenderName(String genderName) {
		this.genderName = genderName;
	}

}
