package com.jtd.spring4mvc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jtd.spring4mvc.dao.ActionProposalExportDao;
import com.jtd.spring4mvc.entity.Engagement;
import com.jtd.spring4mvc.entity.ExportActionProposal;
import com.jtd.spring4mvc.entity.ImportFile;
import com.jtd.spring4mvc.service.ExportActionProposalService;

@Controller
public class ExportController {
	@Autowired
	private ExportActionProposalService exportActionProposalService;
	
@RequestMapping ("user/actionProposal")
public String getUserPage(ModelMap model) {
	model.addAttribute("msg", "Welcome page for the Normal users!!");
	return "userImportData";
}

@RequestMapping(value = "/user/actionProposal", method = RequestMethod.POST)
public String addExportActionProposal(@ModelAttribute("actionProposalData")  ExportActionProposal exportActionProposal) {
	exportActionProposalService.addExportActionProposal(exportActionProposal);
	return "ActionProposalSuccess";
}

		
}
