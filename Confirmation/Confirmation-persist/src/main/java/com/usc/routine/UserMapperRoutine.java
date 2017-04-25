package com.usc.routine;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.usc.dao.UserMapper;
import com.usc.model.User;
import com.usc.routine.inter.IUserMapperRoutine;
import com.usc.utils.StringUtil;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午4:41:03 用户信息事务
 */
@Component
@Transactional
public class UserMapperRoutine implements IUserMapperRoutine {

	@Resource
	private UserMapper userMapper;
	
	public User findUserWithRoleById(String account) throws Exception {
		if (StringUtil.isBlank(account)) {
			throw new Exception("查询数据库的账号不能为空");
		}
		User u = userMapper.findUserWithRoleById(account);
		if (u == null) {
			throw new Exception("在数据库中没有查询到用户和角色信息");
		}
		return u;
	}

}
