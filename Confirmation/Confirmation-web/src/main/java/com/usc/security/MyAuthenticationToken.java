package com.usc.security;

import java.util.Collection;

import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午11:13:25 身份验证凭证
 */
public class MyAuthenticationToken extends AbstractAuthenticationToken {

	/**
	 * @fieldName: serialVersionUID
	 * @fieldType: long
	 * @Description: TODO
	 */
	private static final long serialVersionUID = -888683179898957896L;

	private Object principal;
	private Object credentials;
	private String validationCode;

	public MyAuthenticationToken(
			Collection<? extends GrantedAuthority> authorities,
			Object principal, Object credentials, String validationCode) {
		super(authorities);
		this.principal = principal;
		this.credentials = credentials;
		this.validationCode = validationCode;
		super.setAuthenticated(true);
	}

	public MyAuthenticationToken(Object principal, Object credentials,
			String validationCode) {
		super(null);
		this.principal = principal;
		this.credentials = credentials;
		this.validationCode = validationCode;
		setAuthenticated(false);
	}

	@Override
	public Object getCredentials() {
		return this.credentials;
	}

	@Override
	public Object getPrincipal() {
		return this.principal;
	}

	@Override
	public void eraseCredentials() {
		super.eraseCredentials();
		credentials = null;
	}

	public void setAuthenticated(boolean isAuthenticated)
			throws IllegalArgumentException {
		if (isAuthenticated) {
			throw new IllegalArgumentException(
					"Once created you cannot set this token to authenticated. Create a new instance using the constructor which takes a GrantedAuthority list will mark this as authenticated.");
		}
		super.setAuthenticated(false);
	}

	public String getValidationCode() {
		return validationCode;
	}

	public void setValidationCode(String validationCode) {
		this.validationCode = validationCode;
	}

}
