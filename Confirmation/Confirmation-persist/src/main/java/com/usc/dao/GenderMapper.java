package com.usc.dao;

import java.util.List;
import com.usc.model.Gender;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午6:10:19 性别dao
 */
public interface GenderMapper {

	/**
	 * 插入一个性别信息
	 * 
	 * @Title: insertGender
	 * @Description: TODO
	 * @param gender
	 * @return: void
	 */
	public void insertGender(Gender gender);

	/**
	 * 删除一条性别信息
	 * 
	 * @Title: deleteGenderByCode
	 * @Description: TODO
	 * @param code
	 * @return: void
	 */
	public void deleteGenderByCode(String code);

	/**
	 * 更新一条性别信息
	 * 
	 * @Title: updateGender
	 * @Description: TODO
	 * @param gender
	 * @return: void
	 */
	public void updateGender(Gender gender);

	/**
	 * 根据id查询一条性别信息
	 * 
	 * @Title: selectGenderByCode
	 * @Description: TODO
	 * @param code
	 * @return
	 * @return: Gender
	 */
	public Gender selectGenderByCode(String code);

	/**
	 * 查询所有的性别信息
	 * 
	 * @Title: selectAllGenders
	 * @Description: TODO
	 * @return
	 * @return: List<Gender>
	 */
	public List<Gender> selectAllGenders();

}
