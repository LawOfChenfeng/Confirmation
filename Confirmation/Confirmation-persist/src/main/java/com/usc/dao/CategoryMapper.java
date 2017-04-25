package com.usc.dao;

import java.util.List;
import com.usc.model.Category;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午8:06:32 考生类别dao
 */
public interface CategoryMapper {

	/**
	 * 增加一条考生类别信息
	 * 
	 * @Title: insertCategory
	 * @Description: TODO
	 * @param category
	 * @return: void
	 */
	public void insertCategory(Category category);

	/**
	 * 根据code删除一条考生类别信息
	 * 
	 * @Title: deleteCategoryByCode
	 * @Description: TODO
	 * @param code
	 * @return: void
	 */
	public void deleteCategoryByCode(String code);

	/**
	 * 更新一条考生类别信息
	 * 
	 * @Title: updateCategory
	 * @Description: TODO
	 * @param category
	 * @return: void
	 */
	public void updateCategory(Category category);

	/**
	 * 根据code查找一条考生类别信息
	 * 
	 * @Title: selectCategoryByCode
	 * @Description: TODO
	 * @param code
	 * @return
	 * @return: Category
	 */
	public Category selectCategoryByCode(String code);

	/**
	 * 查找所有的考生类别信息
	 * 
	 * @Title: selectAllCategories
	 * @Description: TODO
	 * @return
	 * @return: List<Category>
	 */
	public List<Category> selectAllCategories();

}
