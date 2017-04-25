package com.usc.security;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;

import com.usc.model.User;
import com.usc.security.exception.MyAuthenticationException;
import com.usc.utils.Log4jUtil;
import com.usc.utils.StringUtil;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午11:27:34 类说明
 */
public class MyAuthenticationProvider implements AuthenticationProvider {

	private UserDetailsService userDetailsService;

	private final String LOG_PREFIX = "MyAuthenticationProvider_";

	@Override
	public Authentication authenticate(Authentication authentication)
			throws AuthenticationException {
		String methodLogPrefix = "authenticate(): ";
		// 先获取详细信息
		User u = null;
		try {
			u = (User) userDetailsService.loadUserByUsername(authentication
					.getName());
		} catch (Exception e) {
			Log4jUtil.info(LOG_PREFIX + methodLogPrefix + e.getMessage());
			throw new MyAuthenticationException("该账户没有注册");
		}
		if (u == null) {
			Log4jUtil.info(LOG_PREFIX + methodLogPrefix + "没有找到用户信息");
			throw new MyAuthenticationException("该账户没有注册");
		}
		// 获取页面填写信息
		MyAuthenticationToken token = (MyAuthenticationToken) authentication;
		String page_validationCode = token.getValidationCode();
		if (StringUtil.isBlank(page_validationCode)) {
			// 实际上在UsernamePasswordAuthenticationFilter中就校验过code,为空则不一致
			Log4jUtil.info(LOG_PREFIX + methodLogPrefix + "验证码填写错误");
			throw new MyAuthenticationException("验证码不正确");
		}
		String page_password = token.getCredentials().toString();
		String password = u.getPassword();
		if (!page_password.equals(password)) {
			Log4jUtil.info(LOG_PREFIX + methodLogPrefix + "账号与密码不匹配");
			throw new MyAuthenticationException("账号与密码不匹配");
		}
		// 验证通过则返回UsernamePasswordAuthenticationToken
		// 否则，可直接抛出错误（AuthenticationException的子类，在登录验证不通过重定向至登录页时可通过session.SPRING_SECURITY_LAST_EXCEPTION.message获取具体错误提示信息）
		// 其他验证逻辑
		
		return token;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return true;
	}

	public UserDetailsService getUserDetailsService() {
		return userDetailsService;
	}

	public void setUserDetailsService(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}

}
