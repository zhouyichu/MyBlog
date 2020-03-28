package com.zf.myblog.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.zf.myblog.entity.CommentVO;
import com.zf.myblog.entity.MessageVO;

public interface CommentService {

	/**
	 * 新增文章评论
	 * @param comm
	 * @return
	 */
	public int insertComm(CommentVO comm);
	
	/**
	 * 查询文章下的评论
	 * @param artId 文章Id
	 * @return
	 */
	public List<CommentVO> queryCommByArtId(String artId);
	
	/**
	 *新增留言
	 * @param msgVO
	 * @return
	 */
	public int insertMsg(MessageVO msgVO);
	
	/**
	 * 留言分页
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public PageInfo<MessageVO> msgPage(int pageNum,int pageSize);
}
