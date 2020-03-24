package com.zf.myblog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.zf.myblog.entity.ArticleVO;
import com.zf.myblog.entity.CommentVO;
import com.zf.myblog.service.ArticleService;
import com.zf.myblog.service.CommentService;

/**
 * 文章处理类
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleService artService;
	@Autowired
	private CommentService commService;
	
	/**
	 * 文章详情
	 * @param model
	 * @param articleId
	 * @return
	 */
	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String details(Model model,@RequestParam("articleId") String articleId) {
		ArticleVO artVO = artService.getArtById(articleId);
		model.addAttribute("artVO", artVO);
		String tagStr = artVO.getTags();
		String[] tagArr = tagStr.split(",");
		model.addAttribute("tagArr", tagArr);
		List<CommentVO> commList = commService.queryCommByArtId(articleId);
		model.addAttribute("commSize", commList.size());
		model.addAttribute("commList", commList);
		return "details";
	}
	
	/**
	 * 编辑 and 新增文章
	 * @param model
	 * @param articleId
	 * @return
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model,@RequestParam(required = false,value="articleId") String articleId) {
		if(!StringUtil.isEmpty(articleId)) {
			ArticleVO artVO = artService.getArtById(articleId);
			model.addAttribute("artVO", artVO);
		}
		return "edit";
	}
	
	/**
	 * 文章列表 | 首页-无差别获取所有文章
	 * @param pageNumStr 页码
	 * @return
	 */
	@RequestMapping(value = "/list", method = { RequestMethod.POST})
	public @ResponseBody PageInfo<ArticleVO> list(@RequestParam("pageNum") String pageNumStr) {
		int pageNum = Integer.parseInt(pageNumStr);
		int pageSize = 10;
		PageInfo<ArticleVO> pageInfo = artService.articlePage(pageNum, pageSize);
		return pageInfo;
	}
}
