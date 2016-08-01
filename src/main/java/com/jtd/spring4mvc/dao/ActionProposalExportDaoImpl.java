package com.jtd.spring4mvc.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.jtd.spring4mvc.entity.ExportActionProposal;

public class ActionProposalExportDaoImpl implements ActionProposalExportDao{
	@Autowired
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addExportActionProposal(ExportActionProposal exportActionProposal) {
		sessionFactory.getCurrentSession().saveOrUpdate(exportActionProposal);
		
	}
	

}
