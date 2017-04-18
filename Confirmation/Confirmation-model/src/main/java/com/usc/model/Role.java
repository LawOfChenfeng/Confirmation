package com.usc.model;

import org.springframework.security.core.GrantedAuthority;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 上午12:37:20 角色
 */
public class Role implements GrantedAuthority {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = -6882086948722974662L;

	private String id;
	private String name;

	public Role() {
	}

	public Role(String name) {
		this.name = name;
	}

	@Override
	public String getAuthority() {
		return this.name;
	}

	public String getId() {
		return id;
	}

	public void setName(String name) {
		this.name = name;
	}

}
