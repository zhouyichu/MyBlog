package com.zf.myblog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zf.myblog.entity.CommentVO;
import com.zf.myblog.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private CommentService commService;
	
	@RequestMapping(value = "/add", method = { RequestMethod.POST })
	public @ResponseBody int insertComm(HttpServletRequest request) {
		String account = request.getParameter("account");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		String artId = request.getParameter("artId");
		CommentVO comm = new CommentVO();
		comm.setArtId(artId);
		comm.setAccount(account);
		comm.setEmail(email);
		comm.setContent(content);
		int res = commService.insertComm(comm);
		return res;
	}
}
