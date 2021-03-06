package com.jtd.spring4mvc.service;

import java.util.List;

import com.jtd.spring4mvc.entity.CauseCodeBean;
import com.jtd.spring4mvc.entity.Engagement;

public interface CauseCodeService 
{

	public void addCauseCode(CauseCodeBean causeCodeBean);
		 
	public List<CauseCodeBean> getCauseCodes();
		 
	public void updateCauseCode(CauseCodeBean CauseCodeBean);
		 
	public CauseCodeBean getCauseCode(int causeCodeId);
		 
	public void deleteCauseCode(int causeCodeId);
		 
	public List<Engagement> getEngagements();

		

	}





