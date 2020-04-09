package com.zf.myblog.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageInfo;
import com.zf.myblog.common.MyBlogConstant;
import com.zf.myblog.entity.ArticleVO;
import com.zf.myblog.entity.MessageVO;
import com.zf.myblog.service.ArticleService;
import com.zf.myblog.service.CommentService;
import com.zf.myblog.utils.AddressUtils;

@Controller
public class WebPageController {

	@Autowired
	private ArticleService articleService;
	@Autowired
	private CommentService commService;
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		//获取所有文章（第一页）
		PageInfo<ArticleVO> pageInfo = articleService.articlePage(1, 10,MyBlogConstant.ARTICLE_TYPE_EXP);
		PageInfo<ArticleVO> hotPageInfo = articleService.hotTopArt(1, 5);
		model.addAttribute("data", pageInfo.getList());
		model.addAttribute("hotData", hotPageInfo.getList());
		return "index";
	}
	
	@RequestMapping(value = "/message")
	public String message(Model model) {
		return "message";
	}
	
	@RequestMapping(value = "/moodnote")
	public String moodnote(Model model) {
		PageInfo<ArticleVO> pageInfo = articleService.articlePage(1, 10,MyBlogConstant.ARTICLE_TYPE_MOOD);
		model.addAttribute("data", pageInfo.getList());
		return "moodnote";
	}
	
	@RequestMapping(value = "/message/{pageNum}",method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> messagePage(@PathVariable(required=true) Integer pageNum) {
		Map<String, Object> result = new HashMap<String, Object>();
		PageInfo<MessageVO> pageInfo = commService.msgPage(pageNum, 10);
		int pages = pageInfo.getPages();
		result.put("pages", pages);
		result.put("pageNum",pageNum);
		result.put("data", pageInfo.getList());
		return result;
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
	
	
	@RequestMapping(value = "/hand")
	public String hand() {
		return "hand";
	}
	
	@RequestMapping(value = "/iptest")
	public @ResponseBody String iptest(HttpServletRequest request) {
		String ip = AddressUtils.getIpAddress(request);
		String address = "";
        try {
            address = AddressUtils.getAddresses(ip);
        }
        catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        JSONArray jsonArray = JSON.parseArray(address);
        String region = jsonArray.getString(1);
        String city = jsonArray.getString(2);
		return ip+"   "+region+"-"+city;
	}
}
