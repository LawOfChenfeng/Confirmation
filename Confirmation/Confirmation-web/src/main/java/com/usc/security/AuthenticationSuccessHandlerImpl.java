package com.usc.security;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.usc.model.Role;
import com.usc.model.constant.ModelConstant;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午6:07:55 认证成功之后的操作
 */
public class AuthenticationSuccessHandlerImpl implements
		AuthenticationSuccessHandler {

	private static final String STUDENT_LOGIN_URL = "/student_confirm";
	private static final String TEACHER_LOGIN_URL = "/teacher_manager";

	/**
	 * 当用户验证成功的时候
	 */
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		// 第一步，先判断用户是否是学生
		boolean isStudent = this.isStudent(authentication);
		// 如果用户不是学生，则是老师,则转向教师页面
		if (!isStudent) {
			request.getRequestDispatcher(TEACHER_LOGIN_URL).forward(request,
					response);
		}
		// 如果用户是学生
		request.getRequestDispatcher(STUDENT_LOGIN_URL).forward(request,
				response);
	}

	/**
	 * 判断用户是不是学生
	 * 
	 * @Title: isStudent
	 * @Description: TODO
	 * @param authentication
	 * @return
	 * @return: boolean
	 */
	private boolean isStudent(Authentication authentication) {
		boolean result = false;
		Collection<? extends GrantedAuthority> roles = authentication
				.getAuthorities();
		for (GrantedAuthority r : roles) {
			String authority = ((Role) r).getAuthority();
			if (ModelConstant.ROLE_STU.equals(authority)) {
				result = true;
			}
		}
		return result;
	}

}
