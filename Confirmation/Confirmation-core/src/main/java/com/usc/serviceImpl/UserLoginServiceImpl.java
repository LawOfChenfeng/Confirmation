package com.usc.serviceImpl;

import javax.annotation.Resource;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.usc.model.User;
import com.usc.service.UserService;
import com.usc.utils.Log4jUtil;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午10:25:26 类说明
 */
public class UserLoginServiceImpl implements UserDetailsService {

	@Resource
	private UserService userService;

	private final String LOG_PREFIX = "UserDetailsService_";

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		String methodLogPrefix = "loadUserByUsername(): ";
		User u = null;
		try {
			u = userService.findUserWithRoleById(username);
		} catch (Exception e) {
			Log4jUtil.info(LOG_PREFIX + methodLogPrefix + e.getMessage());
			return null;
		}
		if (u == null) {
			Log4jUtil.info(LOG_PREFIX + methodLogPrefix + "没有找到用户信息");
			throw new UsernameNotFoundException("用户信息没有找到");
		}
		return u;
	}
}
