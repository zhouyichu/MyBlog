package com.zf.myblog.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.zf.myblog.common.MyBlogConstant;
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
		PageInfo<ArticleVO> pageInfo = artService.articlePage(1, 10,MyBlogConstant.ARTICLE_TYPE_EXP);
		PageInfo<ArticleVO> hotPageInfo = artService.hotTopArt(1, 5);
		model.addAttribute("data", pageInfo.getList());
		model.addAttribute("hotData", hotPageInfo.getList());
		return "details";
	}
	
	/**
	 * 文章详情
	 * @param model
	 * @param articleId
	 * @return
	 */
	@RequestMapping(value = "/mood/details", method = RequestMethod.GET)
	public String moodDetails(Model model,@RequestParam("articleId") String articleId) {
		ArticleVO artVO = artService.getArtById(articleId);
		model.addAttribute("artVO", artVO);
		String tagStr = artVO.getTags();
		String[] tagArr = tagStr.split(",");
		model.addAttribute("tagArr", tagArr);
		List<CommentVO> commList = commService.queryCommByArtId(articleId);
		model.addAttribute("commSize", commList.size());
		model.addAttribute("commList", commList);
		return "mooddetails";
	}
	
	/**
	 * 编辑文章
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
	 * 新增 and 修改文章
	 * @return
	 */
	@RequestMapping(value = "/save", method = { RequestMethod.POST})
	public @ResponseBody int add(HttpServletRequest request) {
		String title = request.getParameter("title");
		String summary = request.getParameter("summary");
		String content = request.getParameter("content");
		String tags = request.getParameter("tags");
		String artId = request.getParameter("artId");
		String readTime = request.getParameter("readTime");
		String artType=request.getParameter("artType");
		String isNew = request.getParameter("isNew");
		ArticleVO artVO = new ArticleVO();
		artVO.setTitle(title);
		artVO.setIntro(summary);
		artVO.setContent(content);
		artVO.setTags(tags);
		if(!StringUtil.isEmpty(artId)) {
			artVO.setArticleId(artId);
		}
		if(!StringUtil.isEmpty(readTime)) {
			artVO.setReadTime(readTime);
		}
		if(!"0".equals(artType)) {
			artVO.setArtType("1");//随笔
		}else {
			artVO.setArtType("0");//技术类
		}
		int res = 0;
		if("0".equals(isNew)) {//新增
			res = artService.saveArt(artVO);
		}else {
			res = artService.updateArt(artVO);
		}
		return res;
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
		PageInfo<ArticleVO> pageInfo = artService.articlePage(pageNum, pageSize,MyBlogConstant.ARTICLE_TYPE_EXP);
		return pageInfo;
	}
}
