package com.jm.app.service;

import java.util.List;
import java.util.Map;

import com.jm.app.bean.Deliver;
import com.jm.app.bean.Project;

public interface ProjectService {
	
	/**
	 * 通过项目类型获取项目
	 * @param type null-所有的项目 0-财富项目 1-梦想项目
	 * @param status null-全部 0-即将开始 1-正在众筹 2-众筹结束 3-完成兑付
	 * @return
	 */
	List<Project> getProByType(Integer type,Integer status);
  /**
   * 通过DeliverId获取Project
   * @param id
   * @return
   */
	List<Project> findByDeliverId(int id);
	/**
	 * 通过DeliverId获取Deliver
	 * @param id
	 * @return
	 */
	Deliver findDeliverId(int id);
	/**
	 * 获取Delver所有信息
	 * @return
	 */
	List<Deliver> findAll();
	/**
	 * 获取project所有信息
	 * @return
	 */
	List<Project> getAll();
	
	Map<Integer, String> getProNameWithIdByDelId(int id);
	Map<Integer, String> getDelNameWithId();
	/**
	 * 通过proiverId获取Project
	 * @param id
	 * @return
	 */
	Project findProiverId(int id);
	/**
	 * 修改项目信息
	 * @return
	 */
	void updatePro(Project p);
}
