package com.usc.service;

import com.usc.model.User;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午11:35:25 用户信息服务
 */
public interface UserService {

	public User findUserWithRoleById(String account) throws Exception;

}
