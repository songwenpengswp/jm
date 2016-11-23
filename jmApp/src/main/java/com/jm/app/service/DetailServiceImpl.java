package com.jm.app.service;

import java.util.List;
import java.util.Map;

import com.jm.app.bean.Project;
import com.jm.app.bean.Prorder;
import com.jm.app.dao.ProjectDAO;
import com.jm.app.dao.ProrderDAO;

public class DetailServiceImpl implements DetailService {

	private ProjectDAO proDao;
	
	private ProrderDAO orderDao;
	
	@Override
	public Project getProject(int proId) {
		// TODO Auto-generated method stub
		return proDao.findById(proId);
	}

	
	
	public ProjectDAO getProDao() {
		return proDao;
	}

	public void setProDao(ProjectDAO proDao) {
		this.proDao = proDao;
	}



	public ProrderDAO getOrderDao() {
		return orderDao;
	}



	public void setOrderDao(ProrderDAO orderDao) {
		this.orderDao = orderDao;
	}



	@Override
	public Project getProjectWithSum(int proId) {
		
		Map<Integer,Integer> sumMap=orderDao.sumInvestByProId();
		Project project=proDao.findById(proId);
		project.setInvestSum(sumMap.get(proId));
		return project;
	}
/*         
public Project getProjectWithSum2(int proId) {
		
		Map<Integer,Integer> sumMap=orderDao.sumInvestByProIdandUserId();
		Project project=proDao.findById(proId);
		project.setInvestSum(sumMap.get(proId));
		return project;
	}*/

	@Override
	public Map<Integer, Integer> getSumByProId() {
		// TODO Auto-generated method stub
		return orderDao.sumInvestByProId();
	}



	@Override
	public List<Prorder> getProrder(int proId) {
		// TODO Auto-generated method stub
		return orderDao.findByProId(proId);
	}

	
}
