package com.jm.app.service;

import java.util.List;

import com.jm.app.bean.Comments;
import com.jm.app.bean.Reply;

public interface ReplyService {

	/**
	 * 获取所有评论
	 * @param proId
	 * @return
	 */
	List<Reply> getByReply(int comment);
	/**
	 * 添加评论
	 * @param reply
	 */
	void Save(Reply reply);
	
	
}
