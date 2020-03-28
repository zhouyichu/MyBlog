package com.zf.myblog.service;

import com.github.pagehelper.PageInfo;
import com.zf.myblog.entity.ArticleVO;

/**
 * 头程尾程申请流程处理接口
 * @author Administrator
 *
 */
public interface ArticleService {
	/**
	 * 首页加载文章列表
	 * @return
	 */
	public PageInfo<ArticleVO> articlePage(Integer pageNum, Integer pageSize);
	
	/**
	 * 文章热度排行Top5
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public PageInfo<ArticleVO> hotTopArt(Integer pageNum, Integer pageSize);
	
	/**
	 * 通过ID获取文章信息
	 * @param artId 文章ID
	 * @return 文章信息对象
	 */
	public ArticleVO getArtById(String artId);
	
	/**
	 * 保存文章
	 * @param artVO
	 * @return
	 */
	public int saveArt(ArticleVO artVO);
	
	/**
	 * 修改文章
	 * @param artVO
	 * @return
	 */
	public int updateArt(ArticleVO artVO);
}
