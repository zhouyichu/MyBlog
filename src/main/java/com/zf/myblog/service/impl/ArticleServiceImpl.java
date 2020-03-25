package com.zf.myblog.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.zf.myblog.entity.ArticleVO;
import com.zf.myblog.mapper.ArticleMapper;
import com.zf.myblog.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleMapper artMapper;

	@Override
	public PageInfo<ArticleVO> articlePage(Integer pageNum, Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<ArticleVO> articleList = artMapper.articlePage();
		PageInfo<ArticleVO> pageInfo = new PageInfo<ArticleVO>(articleList);
		return pageInfo;
	}

	@Override
	public ArticleVO getArtById(String artId) {
		if(StringUtil.isEmpty(artId)) {
			return null;
		}
		//每获取一次，就代表阅读一次，阅读次数+1
		ArticleVO artVO = artMapper.getArtById(artId);
		String readTime=artVO.getReadTime();
		int reads = Integer.parseInt(readTime);
		reads+=1;
		artVO.setReadTime(reads+"");
		artMapper.updateReadTimeById(artVO);
		return artVO;
	}

	@Override
	public int saveArt(ArticleVO artVO) {
		if(StringUtil.isEmpty(artVO.getArticleId())) {
			artVO.setArticleId(UUID.randomUUID().toString());
		}
		if(StringUtil.isEmpty(artVO.getReadTime())) {
			artVO.setReadTime("0");
		}
		int res = artMapper.saveArt(artVO);
		return res;
	}
}
