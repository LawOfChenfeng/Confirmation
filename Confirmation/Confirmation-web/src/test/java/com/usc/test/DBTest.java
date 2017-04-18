package com.usc.test;

import java.util.Collection;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.usc.dao.UserMapper;
import com.usc.model.Role;
import com.usc.model.User;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年2月12日 上午1:16:10 数据库测试类
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})
public class DBTest {
	
	@Autowired
	private UserMapper userMapper;
	
	@Test
	public void testSelect(){
		User u = userMapper.findUserWithRoleById("123");
		Collection<? extends GrantedAuthority> roles = u.getAuthorities();
		for(GrantedAuthority r : roles){
			System.out.println(((Role)r).getAuthority());
		}
	}
	
}
