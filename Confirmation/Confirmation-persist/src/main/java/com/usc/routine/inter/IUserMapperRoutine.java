package com.usc.routine.inter;

import com.usc.model.User;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月25日 下午5:12:14 用户信息事务接口
 */
public interface IUserMapperRoutine {

	public User findUserWithRoleById(String account) throws Exception;

}
