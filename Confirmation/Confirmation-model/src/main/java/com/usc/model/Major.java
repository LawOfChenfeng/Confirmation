package com.usc.model;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午5:31:15 专业
 */
public class Major {

	private String sectionCode;// 科类代码
	private String majorNickName;// 专业代号
	private String majorCode;// 专业代码
	private String majorName;// 专业名称
	private String fraction;// 分数线
	private String majorCategory;// 专业类别
	private boolean isControl;// 是否控制

	public Major() {

	}

	public Major(String sectionCode, String majorNickName, String majorCode,
			String majorName, String fraction, String majorCategory,
			boolean isControl) {
		this.sectionCode = sectionCode;
		this.majorNickName = majorNickName;
		this.majorCode = majorCode;
		this.majorName = majorName;
		this.fraction = fraction;
		this.majorCategory = majorCategory;
		this.isControl = isControl;
	}

	public String getSectionCode() {
		return sectionCode;
	}

	public void setSectionCode(String sectionCode) {
		this.sectionCode = sectionCode;
	}

	public String getMajorNickName() {
		return majorNickName;
	}

	public void setMajorNickName(String majorNickName) {
		this.majorNickName = majorNickName;
	}

	public String getMajorCode() {
		return majorCode;
	}

	public void setMajorCode(String majorCode) {
		this.majorCode = majorCode;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	public String getFraction() {
		return fraction;
	}

	public void setFraction(String fraction) {
		this.fraction = fraction;
	}

	public String getMajorCategory() {
		return majorCategory;
	}

	public void setMajorCategory(String majorCategory) {
		this.majorCategory = majorCategory;
	}

	public boolean isControl() {
		return isControl;
	}

	public void setControl(boolean isControl) {
		this.isControl = isControl;
	}

}
