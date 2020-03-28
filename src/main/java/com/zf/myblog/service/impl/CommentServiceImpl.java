package com.zf.myblog.service.impl;

import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zf.myblog.entity.CommentVO;
import com.zf.myblog.entity.MessageVO;
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

	@Override
	public int insertMsg(MessageVO msgVO) {
		String msgId = UUID.randomUUID().toString();
		msgVO.setMsgId(msgId);
		int res = commMapper.insertMsg(msgVO);
		return res;
	}

	@Override
	public PageInfo<MessageVO> msgPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<MessageVO> articleList = commMapper.msgPage();
		PageInfo<MessageVO> pageInfo = new PageInfo<MessageVO>(articleList);
		return pageInfo;
	}
}
