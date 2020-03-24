package com.zf.myblog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageInfo;
import com.zf.myblog.entity.ArticleVO;
import com.zf.myblog.service.ArticleService;

@Controller
public class WebPageController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		PageInfo<ArticleVO> pageInfo = articleService.articlePage(1, 10);
		model.addAttribute("data", pageInfo.getList());
		return "index";
	}
	
	@RequestMapping(value = "/message")
	public String message() {
		return "message";
	}
	
	@RequestMapping(value = "/aboutme")
	public String aboutme() {
		return "aboutme";
	}
	
	@RequestMapping(value = "/cooperate")
	public String cooperate() {
		return "cooperate";
	}
	
	@RequestMapping(value = "/download")
	public String download() {
		return "download";
	}
}
