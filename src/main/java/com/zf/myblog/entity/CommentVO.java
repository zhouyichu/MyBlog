package com.zf.myblog.entity;

/**
 * 评论VO
 * @author Administrator
 *
 */
public class CommentVO {
	private String commId;//评论ID
	private String artId;//关联的文章ID
	private String account;//账号
	private String email;//邮箱地址
	private String content;//评论内容
	private String createTime;//评论时间
	private String status;//评论状态
	
	public String getCommId() {
		return commId;
	}
	public void setCommId(String commId) {
		this.commId = commId;
	}
	public String getArtId() {
		return artId;
	}
	public void setArtId(String artId) {
		this.artId = artId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public CommentVO(String commId, String artId, String account, String email, String content, String createTime,
			String status) {
		super();
		this.commId = commId;
		this.artId = artId;
		this.account = account;
		this.email = email;
		this.content = content;
		this.createTime = createTime;
		this.status = status;
	}
	public CommentVO() {
		super();
	}
	
}
