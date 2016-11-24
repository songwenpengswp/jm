package com.jm.app.service;

import java.util.List;
import java.util.Map;

import com.jm.app.bean.Project;
import com.jm.app.bean.Prorder;

public interface DetailService {
	
	/**
	 * 通过id获取项目
	 * @param proId 项目id
	 * @return
	 */
	Project getProject(int proId);

	/**
	 * 带有筹集金额统计的项目对象
	 * @param proId 项目id
	 * @return
	 */
	Project getProjectWithSum(int proId);
	
	/**
	 * 统计每个项目目前投资的金额
	 * @return
	 */
	Map<Integer,Integer> getSumByProId();
	
	
	List<Prorder>  getProrder(int proId);
	
}
