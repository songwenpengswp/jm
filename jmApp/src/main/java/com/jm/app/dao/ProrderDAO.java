package com.jm.app.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.jm.app.bean.Prorder;


/**
 * A data access object (DAO) providing persistence and search support for
 * Prorder entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.jm.app.bean.Prorder
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class ProrderDAO {
	private static final Logger log = LoggerFactory.getLogger(ProrderDAO.class);
	// property constants
	public static final String INVESTMENT = "investment";
	public static final String INCOME = "income";
	public static final String STATUSES = "statuses";

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

	public void save(Prorder transientInstance) {
		log.debug("saving Prorder instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Prorder persistentInstance) {
		log.debug("deleting Prorder instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Prorder findById(java.lang.Integer id) {
		log.debug("getting Prorder instance with id: " + id);
		try {
			Prorder instance = (Prorder) getCurrentSession().get(
					"com.jm.app.bean.Prorder", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<Prorder> findByExample(Prorder instance) {
		log.debug("finding Prorder instance by example");
		try {
			List<Prorder> results = (List<Prorder>) getCurrentSession()
					.createCriteria("com.jm.app.bean.Prorder")
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
		log.debug("finding Prorder instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Prorder as model where model."
					+ propertyName + "= ?";
			Query queryObject = getCurrentSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<Prorder> findByInvestment(Object investment) {
		return findByProperty(INVESTMENT, investment);
	}

	public List<Prorder> findByIncome(Object income) {
		return findByProperty(INCOME, income);
	}

	public List<Prorder> findByStatuses(Object statuses) {
		return findByProperty(STATUSES, statuses);
	}

	public List findAll() {
		log.debug("finding all Prorder instances");
		try {
			String queryString = "from Prorder";
			Query queryObject = getCurrentSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
	
    /**
     * 统计每个项目已投资金额
     * @return key-项目id value-投资金额
     */
	public Map<Integer,Integer> sumInvestByProId()
	{
		String hql="select o.project.id,sum(o.investment) from Prorder o group by o.project.id";
		List<Object[]> results = getCurrentSession().createQuery(hql).list();
		Map<Integer,Integer> sumMap=new HashMap<Integer,Integer>();
		for(Object[] objs:results)
		{
			Integer id=Integer.valueOf(objs[0].toString());
			Integer sum=Integer.valueOf(objs[1].toString());
			sumMap.put(id, sum);
		}
		return sumMap;
	}
	
	
	  /**
     * 统计每个项目每个投资者已投资金额
     * @return key-项目id value-投资金额
     */
	/*public Map<Integer,Integer> sumInvestByProIdandUserId()
	{
		String hql="select o.project.id,o.user.id,sum(o.investment) from Prorder o group by o.project.id,o.user.id";
		List<Object[]> results = getCurrentSession().createQuery(hql).list();
		Map<Integer,Integer> sumMap2=new HashMap<Integer,Integer>();
		for(Object[] objs:results)
		{
			Integer id=Integer.valueOf(objs[0].toString());
			Integer sum=Integer.valueOf(objs[2].toString());
			Integer nameId=Integer.valueOf(objs[1].toString());
		
			sumMap2.put(id,nameId);
		}
		
		//Map<sumMap2,Integer> sumMap=new HashMap<sumMap2,Integer>();
		
		return sumMap2;
	}*/
	/**
	 * 获取转让订单
	 * @return
	 */
	public List<Prorder> getAssignedOrders()
	{
		String hql="from Prorder p where p.statuses=1 and p.project.stop>=:currDate";
		Query queryObject = getCurrentSession().createQuery(hql);
		queryObject.setDate("currDate", new Date());
		return queryObject.list();
		
	}
	public Prorder merge(Prorder detachedInstance) {
		log.debug("merging Prorder instance");
		try {
			Prorder result = (Prorder) getCurrentSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Prorder instance) {
		log.debug("attaching dirty Prorder instance");
		try {
			getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Prorder instance) {
		log.debug("attaching clean Prorder instance");
		try {
			getCurrentSession().buildLockRequest(LockOptions.NONE).lock(
					instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
    public List findByProId(int proId ) {   
    		String hql = "from Prorder p where p.project.id=? group by p.user.id";
    		Query query = getCurrentSession().createQuery(hql);
    		query.setInteger(0, proId);   		
    		return query.list();
    	}
	
	public static ProrderDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ProrderDAO) ctx.getBean("ProrderDAO");
	}
	
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ProrderDAO dao= getFromApplicationContext(ac);
		
		System.out.println(dao.findByProId(1));	
	}
}