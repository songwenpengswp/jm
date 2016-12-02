package com.jm.app.service;

import java.util.List;

import com.jm.app.bean.Comments;

public interface CommentsService {

	/**
	 * 获取所有的评论
	 * @return
	 */
	List<Comments> getByProjectId(int proId);
	/**
	 * 添加评论
	 * @param comments
	 */
	void SaveComments(Comments comments);
	/**
	 * 获取评论表Id
	 * @param commentsId
	 * @return
	 */
	Comments getComments (int commentsId);
}