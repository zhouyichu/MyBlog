package com.zf.myblog.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zf.myblog.entity.CommentVO;
import com.zf.myblog.mapper.CommentMapper;
import com.zf.myblog.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commMapper;
	
	@Override
	public int insertComm(CommentVO comm) {
		String commId = UUID.randomUUID().toString();
		comm.setCommId(commId);
		int res = commMapper.insertComm(comm);
		return res;
	}

	@Override
	public List<CommentVO> queryCommByArtId(String artId) {
		List<CommentVO> commList = commMapper.queryCommByArtId(artId);
		return commList;
	}

}
