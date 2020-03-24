package com.zf.myblog.service;

import java.util.List;

import com.zf.myblog.entity.CommentVO;

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
	
	
}
