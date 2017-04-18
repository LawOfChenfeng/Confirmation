package com.usc.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import com.usc.security.MyAuthenticationToken;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月3日 下午10:01:08 用户名密码验证过滤器
 */
public class MyUsernamePasswordAuthenticationFilter extends
		UsernamePasswordAuthenticationFilter {
	// 用户名
	public static final String SPRING_SECURITY_FORM_USERNAME_KEY = "j_username";
	// 密码
	public static final String SPRING_SECURITY_FORM_PASSWORD_KEY = "j_password";
	// 需要回调的URL 自定义参数
	public static final String SPRING_SECURITY_FORM_REDERICT_KEY = "spring-security-redirect";
	public static final String SPRING_SECURITY_LAST_USERNAME_KEY = "SPRING_SECURITY_LAST_USERNAME";
	private String usernameParameter = SPRING_SECURITY_FORM_USERNAME_KEY;
	private String passwordParameter = SPRING_SECURITY_FORM_PASSWORD_KEY;
	private String redirectParameter = SPRING_SECURITY_FORM_REDERICT_KEY;
	private boolean postOnly = true;

	public MyUsernamePasswordAuthenticationFilter() {
		super();
	}

	@Override
	public Authentication attemptAuthentication(HttpServletRequest request,
			HttpServletResponse response) throws AuthenticationException {
		if (postOnly && !request.getMethod().equals("POST")) {
			throw new AuthenticationServiceException(
					"Authentication method not supported: "
							+ request.getMethod());
		}
		String username = obtainUsername(request);
		String password = obtainPassword(request);
		String validationCode = (String) request.getSession().getAttribute(
				"validate_code");
		String redirectUrl = obtainRedercitUrl(request);
		if (username == null) {
			username = "";
		}
		if (password == null) {
			password = "";
		}
		if (validationCode == null) {
			validationCode = "";
		}
		// 自定义回调URL，若存在则放入Session
		if (redirectUrl != null && !"".equals(redirectUrl)) {
			request.getSession().setAttribute("callCustomRediretUrl",
					redirectUrl);
		}
		username = username.trim();

		MyAuthenticationToken authRequest = new MyAuthenticationToken(username,
				password, validationCode);
		// Allow subclasses to set the "details" property
		setDetails(request, authRequest);
		return this.getAuthenticationManager().authenticate(authRequest);
	}

	protected String obtainPassword(HttpServletRequest request) {
		return request.getParameter(passwordParameter);
	}

	protected String obtainUsername(HttpServletRequest request) {
		return request.getParameter(usernameParameter);
	}

	protected String obtainRedercitUrl(HttpServletRequest request) {
		return request.getParameter(redirectParameter);
	}

	protected void setDetails(HttpServletRequest request,
			MyAuthenticationToken authRequest) {
		authRequest.setDetails(authenticationDetailsSource
				.buildDetails(request));
	}

	public void setUsernameParameter(String usernameParameter) {
		this.usernameParameter = usernameParameter;
	}

	public void setPasswordParameter(String passwordParameter) {
		this.passwordParameter = passwordParameter;
	}

	public void setPostOnly(boolean postOnly) {
		this.postOnly = postOnly;
	}
}
