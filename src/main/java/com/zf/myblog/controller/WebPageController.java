package com.zf.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebPageController {

	@RequestMapping(value = "/")
	public String index() {
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
