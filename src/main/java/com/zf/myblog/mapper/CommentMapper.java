package com.zf.myblog.mapper;

import java.util.List;

import com.zf.myblog.entity.CommentVO;

/**
 * 评论Mapper
 * @author Administrator
 *
 */
public interface CommentMapper {

	public int insertComm(CommentVO comm);
	
	public List<CommentVO> queryCommByArtId(String artId);
}
