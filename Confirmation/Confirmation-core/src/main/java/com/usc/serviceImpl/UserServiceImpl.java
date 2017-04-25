package com.usc.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.usc.model.User;
import com.usc.routine.inter.IUserMapperRoutine;
import com.usc.service.UserService;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午11:59:16 类说明
 */
@Service
public class UserServiceImpl implements UserService {

	@Resource
	private IUserMapperRoutine userMapperRoutine;

	@Override
	public User findUserWithRoleById(String account) throws Exception {
		return userMapperRoutine.findUserWithRoleById(account);
	}

}
