package com.zf.myblog.entity;

/**
 *  留言实体VO
 * @author Administrator
 *
 */
public class MessageVO {
	private String msgId;
	private String account;
	private String email;
	private String content;
	private String status;
	private String createTime;
	public String getMsgId() {
		return msgId;
	}
	public void setMsgId(String msgId) {
		this.msgId = msgId;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public MessageVO(String msgId, String account, String email, String content, String status, String createTime) {
		super();
		this.msgId = msgId;
		this.account = account;
		this.email = email;
		this.content = content;
		this.status = status;
		this.createTime = createTime;
	}
	public MessageVO() {
		super();
	}
}
