package com.usc.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.usc.model.UserRoleMap;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午8:31:16 用户与角色连接表dao
 */
public interface UserRoleMapper {

	/**
	 * 添加一条用户角色映射信息
	 * 
	 * @Title: insertUserRoleMap
	 * @Description: TODO
	 * @param urm
	 * @return: void
	 */
	public void insertUserRoleMap(UserRoleMap urm);

	/**
	 * 根据用户id删除其角色映射信息
	 * 
	 * @Title: deleteUserRoleMapByUserId
	 * @Description: TODO
	 * @param user_id
	 * @return: void
	 */
	public void deleteUserRoleMapByUserId(String user_id);

	/**
	 * 根据用户id和角色id删除一条用户角色映射信息
	 * 
	 * @Title: deleteUserRoleMapByUserIdAndRoleId
	 * @Description: TODO
	 * @param user_id
	 * @param role_id
	 * @return: void
	 */
	public void deleteUserRoleMapByUserIdAndRoleId(
			@Param("user_id") String user_id, @Param("role_id") String role_id);

	/**
	 * 获取id对应用户的所有角色信息
	 * 
	 * @Title: selectUserRoleMapByUserId
	 * @Description: TODO
	 * @param user_id
	 * @return
	 * @return: List<UserRoleMap>
	 */
	public List<UserRoleMap> selectUserRoleMapByUserId(String user_id);

}
