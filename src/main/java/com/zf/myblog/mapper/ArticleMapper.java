package com.zf.myblog.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.zf.myblog.entity.ArticleVO;

@Repository
public interface ArticleMapper {
	public List<ArticleVO> articlePage();
	
	public ArticleVO getArtById(String artId);
	
	public int saveArt(ArticleVO artVO);
	
	public int updateReadTimeById(ArticleVO artVO);
}
