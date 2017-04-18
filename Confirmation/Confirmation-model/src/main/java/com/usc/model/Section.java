package com.usc.model;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午5:21:21 科类
 */
public class Section {

	private String code;// 科类代码
	private String sectionName;// 科类名称

	public Section() {

	}

	public Section(String code, String sectionName) {
		this.code = code;
		this.sectionName = sectionName;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getSectionName() {
		return sectionName;
	}

	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}

}
