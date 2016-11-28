package com.jm.app.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jm.app.bean.Message;
import com.jm.app.bean.Project;
import com.jm.app.bean.Prorder;
import com.jm.app.bean.User;
import com.jm.app.dao.MessageDAO;
import com.jm.app.dao.UserDAO;
import com.jm.app.dao.UserMessageDAO;

public class UserServiceImpl implements UserService {

	private UserDAO userDao;
	private UserMessageDAO umDao;
	private MessageDAO mDao;
	@Override
	public int[][] getSumbyType(String tel) {
		User user = userDao.findByTel(tel).get(0);
		Set<Prorder> prorders = user.getProrders();
		int cnum = 0, csum = 0, ynum = 0, ysum = 0;
		if (prorders != null && prorders.size() > 0) {
			for (Prorder prorder : prorders) {
				if (prorder.getProject().getType() == 0) {
					cnum++;
					csum = csum + prorder.getInvestment().intValue();
				} else {
					ynum++;
					ysum = ysum + prorder.getInvestment().intValue();
				}
			}
		}
		return new int[][] { { cnum, csum }, { ynum, ysum } };
	}

	@Override
	public List<Prorder> getProrderByEnd(String tel, boolean isEnd) {
		List<Prorder> orderList = new ArrayList<Prorder>();
		User user = (User) userDao.findByTel(tel).get(0);
		Set<Prorder> prorders = user.getProrders();
		if (prorders != null && prorders.size() > 0) {
			for (Prorder prorder : prorders) {
				Project pro = prorder.getProject();
				Date startDate = pro.getStart();
				Date now = new Date();
				Calendar cal = Calendar.getInstance();
				cal.setTime(startDate);
				cal.add(Calendar.MONTH, pro.getPeriod());
				if (isEnd) {
					if (cal.getTime().before(now))
						orderList.add(prorder);
				} else {
					if (!cal.getTime().before(now))
						orderList.add(prorder);
				}
			}
		}
		return orderList;
	}

	public UserDAO getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	@Override
	public int[][] getSumByEnd(String tel) {

		User user = userDao.findByTel(tel).get(0);
		Set<Prorder> prorders = user.getProrders();
		int cnum = 0, csum = 0, ynum = 0, ysum = 0;

		if (prorders != null && prorders.size() > 0) {
			for (Prorder prorder : prorders) {
				Project pro = prorder.getProject();
				Date startDate = pro.getStart();
				Date now = new Date();
				Calendar cal = Calendar.getInstance();
				cal.setTime(startDate);
				cal.add(Calendar.MONTH, pro.getPeriod());
				if (cal.getTime().before(now)) {
					cnum++;
					csum = csum
							+ (prorder.getIncome().intValue() - prorder
									.getInvestment().intValue());
				} else {
					ynum++;
					ysum = ysum
							+ (prorder.getIncome().intValue() - prorder
									.getInvestment().intValue());
				}
			}
		}

		return new int[][] { { cnum, csum }, { ynum, ysum } };
	}

	@Override
	public Map<Integer, List<Prorder>> getProrderByStatus(String tel) {
		User user = userDao.findByTel(tel).get(0);
		Set<Prorder> prorders = user.getProrders();
		Map<Integer, List<Prorder>> orderMap = new HashMap<Integer, List<Prorder>>();
		for (Prorder pro : prorders) {
			int status = pro.getStatuses();

			if (orderMap.containsKey(status))
				orderMap.get(status).add(pro);
			else {
				List<Prorder> orderList = new ArrayList<Prorder>();
				orderList.add(pro);
				orderMap.put(status, orderList);
			}
		}
		return orderMap;
	}

	@Override
	public List<Prorder> getAllProder(String tel) {
		
		User user = userDao.findByTel(tel).get(0);
		Set<Prorder> prorders = user.getProrders();
		
		return new ArrayList<Prorder>(prorders);
	}

	@Override
	public void updateUserPic(int id,String pic) {
		// TODO Auto-generated method stub
		User user=userDao.findById(id);
	    user.setPicture(pic);
		userDao.attachDirty(user);
	}

	@Override
	public void updateUser(int id,String name,int sex) {
		// TODO Auto-generated method stub
		User user=(User)userDao.findById(id);
		user.setName(name);
		user.setSex(sex);
		userDao.attachDirty(user);
		
	}
	@Override
	public void updateUser(User user)
	{
		userDao.merge(user);
	}

	@Override
	public User getUser(int id) {

        User user=userDao.findById(id);
		return user;
	}

	@Override
	public void updatPassw(User user) {
		// TODO Auto-generated method stub
		userDao.updatePassword(user);
	}
	
	public static void main(String[] args) {
		UserService  user=new UserServiceImpl();
		User u=new User();
		u.setTel("15044671648");	
		u.setPassword("123456");
		user.updateUser(u);
		
	}

	@Override
		public User findUserByTel(String tel) {
		// TODO Auto-generated method stub
		User user = userDao.findBtTel(tel);
				return user;
	}
	@Override
	public List findByUser(int id) {
		// TODO Auto-generated method stub
		return umDao.findByUser(id);
	}

	@Override
	public Message findById(int id) {
		// TODO Auto-generated method stub
		return mDao.findById(id);
	}
	public UserMessageDAO getUmDao() {
		return umDao;
	}

	public void setUmDao(UserMessageDAO umDao) {
		this.umDao = umDao;
	}

	public MessageDAO getmDao() {
		return mDao;
	}

	public void setmDao(MessageDAO mDao) {
		this.mDao = mDao;
	}

}
