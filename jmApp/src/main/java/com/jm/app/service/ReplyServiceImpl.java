package com.jm.app.service;

import java.util.List;

import com.jm.app.bean.Comments;
import com.jm.app.bean.Reply;
import com.jm.app.dao.CommentsDAO;
import com.jm.app.dao.ReplyDAO;

public class ReplyServiceImpl implements ReplyService {

	private ReplyDAO replyDao;
	
	@Override
	public List<Reply> getByReply(int commentsId) {
		// TODO Auto-generated method stub
		return replyDao.findByComId(commentsId);
	}

	@Override
	public void Save(Reply r) {
		replyDao.save(r);

	}
	

	public ReplyDAO getReplyDao() {
		return replyDao;
	}

	public void setReplyDao(ReplyDAO replyDao) {
		this.replyDao = replyDao;
	}

}
