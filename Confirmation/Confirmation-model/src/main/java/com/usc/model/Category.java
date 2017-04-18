package com.usc.model;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午5:25:48 考生类别
 */
public class Category {

	private String code;// 考生类别代码
	private String categoryName;// 考生类别名称

	public Category() {

	}

	public Category(String code, String categoryName) {
		this.code = code;
		this.categoryName = categoryName;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
