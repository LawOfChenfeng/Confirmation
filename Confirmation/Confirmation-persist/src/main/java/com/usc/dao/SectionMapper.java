package com.usc.dao;

import java.util.List;
import com.usc.model.Section;

/**
 * @author 陈玄礼 E-mail:chenxiake008@qq.com
 * @version 创建时间：2017年4月24日 下午8:14:52 科类dao
 */
public interface SectionMapper {

	/**
	 * 增加一条科类信息
	 * 
	 * @Title: insertSection
	 * @Description: TODO
	 * @param section
	 * @return: void
	 */
	public void insertSection(Section section);

	/**
	 * 根据code删除一条科类信息
	 * 
	 * @Title: deleteSectionByCode
	 * @Description: TODO
	 * @param code
	 * @return: void
	 */
	public void deleteSectionByCode(String code);

	/**
	 * 更新一条科类信息
	 * 
	 * @Title: updateSection
	 * @Description: TODO
	 * @param section
	 * @return: void
	 */
	public void updateSection(Section section);

	/**
	 * 根据code查找一条科类信息
	 * 
	 * @Title: selectSectionByCode
	 * @Description: TODO
	 * @param code
	 * @return
	 * @return: Section
	 */
	public Section selectSectionByCode(String code);

	/**
	 * 查找所有的科类信息
	 * 
	 * @Title: selectAllSections
	 * @Description: TODO
	 * @return
	 * @return: List<Section>
	 */
	public List<Section> selectAllSections();

}
