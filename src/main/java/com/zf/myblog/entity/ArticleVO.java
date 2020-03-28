package com.zf.myblog.entity;

public class ArticleVO {
	private String articleId;//文章ID
	private String title;//文章标题
	private String intro;//简介
	private String content;//文章内容
	private String tags;//标签
	private String readTime;//阅读次数
	private String createTime;//创建时间
	private String artType;
	public String getArtType() {
		return artType;
	}
	public void setArtType(String artType) {
		this.artType = artType;
	}
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getReadTime() {
		return readTime;
	}
	public void setReadTime(String readTime) {
		this.readTime = readTime;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public ArticleVO(String articleId, String title, String intro, String content, String tags, String readTime,
			String createTime, String artType) {
		super();
		this.articleId = articleId;
		this.title = title;
		this.intro = intro;
		this.content = content;
		this.tags = tags;
		this.readTime = readTime;
		this.createTime = createTime;
		this.artType = artType;
	}
	public ArticleVO() {
		super();
	}
	
}
