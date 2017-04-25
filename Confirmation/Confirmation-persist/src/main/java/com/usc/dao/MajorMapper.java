package com.usc.dao;

import java.util.List;
import com.usc.model.Major;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午8:18:48 专业dao
 */
public interface MajorMapper {

	/**
	 * 增加一条专业信息
	 * 
	 * @Title: insertMajor
	 * @Description: TODO
	 * @param major
	 * @return: void
	 */
	public void insertMajor(Major major);

	/**
	 * 根据code删除一条专业信息
	 * 
	 * @Title: deleteMajorByCode
	 * @Description: TODO
	 * @param code
	 * @return: void
	 */
	public void deleteMajorByCode(String code);

	/**
	 * 更新一条专业信息
	 * 
	 * @Title: updateMajor
	 * @Description: TODO
	 * @param major
	 * @return: void
	 */
	public void updateMajor(Major major);

	/**
	 * 根据code搜索一条专业信息
	 * 
	 * @Title: selectMajorByCode
	 * @Description: TODO
	 * @param code
	 * @return
	 * @return: Major
	 */
	public Major selectMajorByCode(String code);

	/**
	 * 查找所有的专业信息
	 * 
	 * @Title: selectAllMajors
	 * @Description: TODO
	 * @return
	 * @return: List<Major>
	 */
	public List<Major> selectAllMajors();

}
