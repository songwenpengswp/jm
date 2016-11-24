package com.jm.app.service;

import java.util.Date;
import java.util.List;

import com.jm.app.bean.Comments;
import com.jm.app.dao.CommentsDAO;

public class CommentsServiceImpl implements CommentsService {

	private CommentsDAO commentsDao;
	
	@Override
	public List<Comments> getByProjectId(int proId) {
		// TODO Auto-generated method stub
		return commentsDao.findByProId(proId);
	}

	@Override
	public void SaveComments(Comments comments) {
		commentsDao.save(comments);

	}

	public CommentsDAO getCommentsDao() {
		return commentsDao;
	}

	public void setCommentsDao(CommentsDAO commentsDao) {
		this.commentsDao = commentsDao;
	}

}
