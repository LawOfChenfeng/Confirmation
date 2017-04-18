package com.usc.dao;

import com.usc.model.User;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月12日 上午1:09:49 用户信息dao
 */
public interface UserMapper {

	public User findUserById(String account);

	public User findUserWithRoleById(String account);

}
