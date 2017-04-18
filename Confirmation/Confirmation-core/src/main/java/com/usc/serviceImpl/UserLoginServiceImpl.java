package com.usc.serviceImpl; 

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/** 
 * @author 陈玄礼 E-mail:chenxiake008@qq.com 
 * @version 创建时间：2017年2月3日 下午10:25:26 
 * 类说明 
 */
public class UserLoginServiceImpl implements UserDetailsService {
	
	
	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		// 根据username找到用户信息
		
		return null;
	}

}
 