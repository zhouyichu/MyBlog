package com.zf.myblog.service.impl;

import java.util.List;
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
		ArticleVO artVO = artMapper.getArtById(artId);
		return artVO;
	}
}
