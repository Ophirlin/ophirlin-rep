package com.dbmp.web.controller;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dbmp.web.service.DealReqService;
@Controller
@RequestMapping(value={"/login"})
public class IndexController extends BaseController {

	private String VIEW_ROOT = "/WEB-INF/jsp/";
	@Resource
	private DealReqService  dealReqService;

	/** 返回 index.jsp 页面 */
	@RequestMapping(value={"/",""})
	public String index(){
		System.out.println("ddd");
		return VIEW_ROOT+"login.jsp";
	}



}
