package com.usc.security.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月26日 上午12:44:28 类说明
 */
public class MyAuthenticationException extends AuthenticationException {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = 4344972011967967242L;

	public MyAuthenticationException(String msg) {
		super(msg);
	}

}
