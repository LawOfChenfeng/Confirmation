package com.usc.dao;

import java.util.List;

import com.usc.model.Role;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午8:00:23 角色dao
 */
public interface RoleMapper {

	/**
	 * 插入一条角色信息
	 * 
	 * @Title: insertRole
	 * @Description: TODO
	 * @param role
	 * @return: void
	 */
	public void insertRole(Role role);

	/**
	 * 根据id删除一条角色信息
	 * 
	 * @Title: deleteRoleById
	 * @Description: TODO
	 * @param id
	 * @return: void
	 */
	public void deleteRoleById(String id);

	/**
	 * 更新一条角色信息
	 * 
	 * @Title: updateRole
	 * @Description: TODO
	 * @param role
	 * @return: void
	 */
	public void updateRole(Role role);

	/**
	 * 根据id查找一条角色信息
	 * 
	 * @Title: selectRoleById
	 * @Description: TODO
	 * @param id
	 * @return
	 * @return: Role
	 */
	public Role selectRoleById(String id);

	/**
	 * 查找所有的角色信息s
	 * 
	 * @Title: selectAllRoles
	 * @Description: TODO
	 * @return
	 * @return: List<Role>
	 */
	public List<Role> selectAllRoles();

}
