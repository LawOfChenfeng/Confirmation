package com.usc.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import com.usc.utils.StringUtil;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午3:47:52 基础的控制类，会给子类提供一些常用方法
 */
public class BaseController {

	/**
	 * 获取链接中的变量值
	 * 
	 * @Title: getRequestParamValue
	 * @Description: TODO
	 * @param request
	 * @param key
	 * @param defaultValue
	 * @return
	 * @return: String
	 */
	protected String getRequestParamValue(HttpServletRequest request,
			String key, String defaultValue) {
		// 第一步，如果key是空的
		if (StringUtil.isBlank(key)) {
			if (StringUtil.isBlank(defaultValue)) {
				return "";
			}
			return defaultValue;
		}
		// 第二步如果key不空，获取key对应的值
		String value = request.getParameter(key);
		if (StringUtil.isBlank(value)) {
			if (StringUtil.isBlank(defaultValue)) {
				return "";
			}
			return defaultValue;
		}
		return value;
	}

	/**
	 * 获取现在的用户名
	 * 
	 * @Title: getCurrentUsername
	 * @Description: TODO
	 * @return
	 * @return: String
	 */
	protected String getCurrentUsername() {
		Object principal = SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			return ((UserDetails) principal).getUsername();
		}
		if (principal instanceof Principal) {
			return ((Principal) principal).getName();
		}
		return String.valueOf(principal);
	}
}
