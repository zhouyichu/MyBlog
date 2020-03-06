package com.zf.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String details(@RequestParam("articleId") String articleId) {
		
		return "details";
	}
}
