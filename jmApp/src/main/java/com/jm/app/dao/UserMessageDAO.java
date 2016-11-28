package com.jm.app.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import static org.hibernate.criterion.Example.create;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.jm.app.bean.Message;
import com.jm.app.bean.User;
import com.jm.app.bean.UserMessage;




/**
 * A data access object (DAO) providing persistence and search support for
 * UserMessage entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.jm.app.bean.UserMessage
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class UserMessageDAO {
	private static final Logger log = LoggerFactory
			.getLogger(UserMessageDAO.class);
	// property constants
	public static final String IS_READ = "isRead";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(UserMessage transientInstance) {
		log.debug("saving UserMessage instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(UserMessage persistentInstance) {
		log.debug("deleting UserMessage instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UserMessage findById(java.lang.Integer id) {
		log.debug("getting UserMessage instance with id: " + id);
		try {
			UserMessage instance = (UserMessage) getCurrentSession().get(
					"com.jm.app.bean.UserMessage", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UserMessage> findByExample(UserMessage instance) {
		log.debug("finding UserMessage instance by example");
		try {
			List<UserMessage> results = (List<UserMessage>) getCurrentSession()
					.createCriteria("com.jm.app.bean.UserMessage")
					.add(create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding UserMessage instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from UserMessage as model where model."
					+ propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<UserMessage> findByIsRead(Object isRead) {
		return findByProperty(IS_READ, isRead);
	}

	public List findAll() {
		log.debug("finding all UserMessage instances");
		try {
			String queryString = "from UserMessage";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public UserMessage merge(UserMessage detachedInstance) {
		log.debug("merging UserMessage instance");
		try {
			UserMessage result = (UserMessage) getCurrentSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(UserMessage instance) {
		log.debug("attaching dirty UserMessage instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UserMessage instance) {
		log.debug("attaching clean UserMessage instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public List<UserMessage> findByRead(int isRead) {
		String hql = "from UserMessage um where um.isRead=?";
		Query query = getCurrentSession().createQuery(hql);
		query.setInteger(0, isRead);
		List<UserMessage> list=query.list();
		return list;
		//
	}
	public List<UserMessage> findByUser(int userId) {
	String hql = "from UserMessage um where um.user.id=?";
	Query query = getCurrentSession().createQuery(hql);
	query.setInteger(0, userId);
	List<UserMessage> list=query.list();
	return list;
	//
}
	/*
	public void update(UserMessage um) {
	    // 开始事物
		String hql="update UserMessage um set um.user.id where um.id=?";
		// 获取session中的hql语句
		Query query = getCurrentSession().createQuery(hql);		
		query.setInteger(0, um.getUser());
		query.setInteger(1, um.getId());	
		query.executeUpdate();     
    }*/
	public static UserMessageDAO getFromApplicationContext(
			ApplicationContext ctx) {
		return (UserMessageDAO) ctx.getBean("UserMessageDAO");
	}
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMessageDAO dao= getFromApplicationContext(ac);
	/*	Message m=new Message();
		Message m2=new Message();
		Message m3=new Message();
		Message m4=new Message();
		m.setId(1);
		m2.setId(2);
		m3.setId(3);
		m4.setId(4);
		User u=new User();
		User u2=new User();
		u.setId(1);
		u2.setId(10);
		UserMessage um=new UserMessage();
		um.setIsRead(0);
		um.setMessage(m);
		um.setUser(u);
		
		UserMessage um2=new UserMessage();
		um2.setIsRead(0);
		um2.setMessage(m2);
		um2.setUser(u2);
		
		UserMessage um3=new UserMessage();
		um3.setIsRead(1);
		um3.setMessage(m3);
		um3.setUser(u2);
		
	    dao.save(um);
	    dao.save(um2);
	    dao.save(um3);*/
		
		UserMessage um4=new UserMessage();
		System.out.println(dao.findByUser(1));
	}
}