package com.usc.model;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午8:32:58 用户与角色间映射关系
 */
public class UserRoleMap {

	private String user_id;
	private String role_id;

	public UserRoleMap(String user_id, String role_id) {
		this.user_id = user_id;
		this.role_id = role_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

}
