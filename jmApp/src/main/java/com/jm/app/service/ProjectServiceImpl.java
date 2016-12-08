package com.jm.app.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.jm.app.bean.Deliver;
import com.jm.app.bean.Project;
import com.jm.app.dao.DeliverDAO;
import com.jm.app.dao.ProjectDAO;


public class ProjectServiceImpl implements ProjectService {

	private ProjectDAO proDao;
	private DeliverDAO delDao;
	
	
	
	
	/**
	 * 获取所有名称的项目和标题
	 */
		@Override
		public Map<Integer, String> getProNameWithIdByDelId(int id) {
			// TODO Auto-generated method stub
			Map<Integer,String> map=new LinkedHashMap<Integer, String>();
//			获取所有班级的数据
			List<Project> list=proDao.findByDeliverId(id);
			for(Project c:list)
			{
				map.put(c.getId(), c.getTitle());
			}
			return map;
		}
		/**
		 * 获取所有名称的项目和标题
		 */
			@Override
			public Map<Integer, String> getDelNameWithId() {
				// TODO Auto-generated method stub
				Map<Integer,String> map=new LinkedHashMap<Integer, String>();
//				获取所有班级的数据
				List<Deliver> list=delDao.findAll();
				for(Deliver c:list)
				{
					map.put(c.getId(), c.getName());
				}
				return map;
			}
			
	@Override
	public List<Project> getProByType(Integer type,Integer status) {
		
	     List<Project> aList=proDao.findAll();
	     if(type!=null)
	     {
	    	 List<Project> typeList=new ArrayList<Project>();
	 	     for(Project pro:aList)
	 	     {
	 	    	 if(pro.getType()==type)
	 	    		 typeList.add(pro);
	 	     }
	 	     aList=typeList;
	     }
	     if(status!=null)
	     {
	    	 List<Project> statusList=new ArrayList<Project>();
	    	 for(Project pro:aList)
	    	 {
	    		 Date startDate=pro.getStart();
	    		 Date stopDate=pro.getStop();
	    		 Date now=new Date();
	    		 switch(status){
	    		    case 0:
	    		    	if(now.before(startDate))
	    		    		statusList.add(pro);
	    		        break;
	    		    case 1:
	    		    	if(now.after(startDate) && now.before(stopDate))
	    		    		statusList.add(pro);
	    		    	break;
	    		    case 2:
	    		    	if(now.after(stopDate))
	    		    		statusList.add(pro);
	    		    	break;
	    		    case 3:
	    		    	Calendar cal=Calendar.getInstance();
	    		    	cal.setTime(startDate);
	    		    	cal.add(Calendar.MONTH, pro.getPeriod());
	    		    	if(cal.getTime().before(now))
	    		    		statusList.add(pro);
	    		    	break;
	    		 }
	    	 }
	    	 aList=statusList;
	     }
		 return aList;
	}

	public ProjectDAO getProDao() {
		return proDao;
	}

	public void setProDao(ProjectDAO proDao) {
		this.proDao = proDao;
	}

	@Override
	public List<Project> findByDeliverId(int id) {
		// TODO Auto-generated method stub
		return proDao.findByDeliverId(id);
	}

	@Override
	public Deliver findDeliverId(int id) {
		// TODO Auto-generated method stub
		return delDao.findDeliverId(id);
	}
	public Project findProiverId(int id) {
		// TODO Auto-generated method stub
		return proDao.findProiverId(id);
	}
	@Override
	public List<Deliver> findAll() {
		// TODO Auto-generated method stub
		return delDao.findAll();
	}

	public DeliverDAO getDelDao() {
		return delDao;
	}

	public void setDelDao(DeliverDAO delDao) {
		this.delDao = delDao;
	}

	@Override
	public List<Project> getAll() {
		// TODO Auto-generated method stub
		return proDao.findAll();
	}
	@Override
	public void updatePro(Project p) {
		// TODO Auto-generated method stub
		 proDao.attachDirty(p);
	}
}
