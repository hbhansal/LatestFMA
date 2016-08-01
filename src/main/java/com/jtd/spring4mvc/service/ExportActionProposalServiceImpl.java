package com.jtd.spring4mvc.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.jtd.spring4mvc.dao.ActionProposalExportDao;
import com.jtd.spring4mvc.entity.ExportActionProposal;


public class ExportActionProposalServiceImpl implements ExportActionProposalService{
	@Autowired
	private ActionProposalExportDao actionProposalExportDao;
	@Override
	public void addExportActionProposal(ExportActionProposal exportActionProposal) {
		actionProposalExportDao.addExportActionProposal(exportActionProposal);
	}

	
}
