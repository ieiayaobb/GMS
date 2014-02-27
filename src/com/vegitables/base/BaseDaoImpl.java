package com.vegitables.base;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;


@Repository
public class BaseDaoImpl extends HibernateDaoSupport implements BaseDao{
	
	private static final Log log = LogFactory.getLog(BaseDaoImpl.class);
	
    @Resource(name="sessionFactory")
    public void setBaseDaoSessionFactory(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }


    //add entity
	public void add(Base transientInstance) {
		try{
			super.getHibernateTemplate().persist(transientInstance);
		}catch (RuntimeException re) {
            log.error("persist failed", re);
            throw re;
        }
	}
	
	//delete entity
	public void delete(Base transientInstance){
		try{
			super.getHibernateTemplate().delete(transientInstance);
		}catch (RuntimeException re) {
            log.error("persist failed", re);
            throw re;
        }
	}
	
	//update entity
	public void update(Base transientInstance){
		try{
			super.getHibernateTemplate().update(transientInstance);
		}catch (RuntimeException re) {
            log.error("persist failed", re);
            throw re;
        }
	}
	
}
