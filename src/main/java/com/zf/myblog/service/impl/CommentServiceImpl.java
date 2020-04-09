package com.zf.myblog.service.impl;

import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zf.myblog.entity.CommentVO;
import com.zf.myblog.entity.MessageVO;
import com.zf.myblog.mapper.CommentMapper;
import com.zf.myblog.service.CommentService;
import com.zf.myblog.utils.AddressUtils;

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
	public int insertMsg(HttpServletRequest request,MessageVO msgVO) {
		String msgId = UUID.randomUUID().toString();
		msgVO.setMsgId(msgId);
		String ip=AddressUtils.getIpAddress(request);
		String address = "";
        try {
            address = AddressUtils.getAddresses(ip);
            JSONArray jsonArray = JSON.parseArray(address);
            String region = jsonArray.getString(1);
            String city = jsonArray.getString(2);
            address = region+" "+city;
        }catch (Exception e) {
            e.printStackTrace();
            address="广东 深圳";
        }
        msgVO.setUserIp(ip);
        msgVO.setUserAddr(address);
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
