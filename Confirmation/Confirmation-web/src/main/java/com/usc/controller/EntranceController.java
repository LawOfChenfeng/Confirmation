package com.usc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午10:43:01 一些页面的入口
 */
@Controller
public class EntranceController extends BaseController {

	@RequestMapping(value = "/login", method = { RequestMethod.GET })
	public String toLoginPage(HttpServletRequest request,
			HttpServletResponse response) {
		return "index";
	}

	@RequestMapping(value = "/teacher_manager", method = { RequestMethod.GET })
	public String toTeacherManagerPage(HttpServletRequest request,
			HttpServletResponse response) {
		// 获取要给页面的信息,并放在request中传给前端

		return "tea_manager";
	}

	@RequestMapping(value = "/student_confirm", method = { RequestMethod.GET })
	public String toStudentPage(HttpServletRequest request,
			HttpServletResponse response) {
		// 第一步，先获取用户的信息

		// 第二步，如果是第一次登陆的学生，則返回 return "student_main";

		// 第三步，如果是已经填写完信息的学生，则返回 return "student_state";

		return null;
	}

}
