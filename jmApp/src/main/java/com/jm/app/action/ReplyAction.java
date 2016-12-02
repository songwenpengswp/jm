package com.jm.app.action;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jm.app.bean.Comments;
import com.jm.app.bean.Project;
import com.jm.app.bean.Reply;
import com.jm.app.bean.User;
import com.jm.app.service.ReplyService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ReplyAction extends ActionSupport {
	
		private ReplyService replyService;

		private String title;
		private Integer commentsId;
		private Integer proId;
		private ActionContext context;
		private Map<String,Object> request;
		@Override
		public String execute() throws Exception {
			
			HttpSession session = ServletActionContext.getRequest().getSession();
		
			proId=(Integer) session.getAttribute("proId");
			Project project=new Project();
			project.setId(proId);
			
			
			
			User user=(User)session.getAttribute("user");
			if(user==null){
				return ERROR;
			}
			
			Comments comments=new Comments();
			comments.setId(commentsId);
			Reply reply = new Reply();
			String titl = new String(title.getBytes("ISO-8859-1"),"UTF-8");
			reply.setContent(titl);
			reply.setIncludeDate(new Date());
			reply.setUser(user);
			reply.setComments(comments);
			replyService.Save(reply);
			return super.execute();
		}


		public ReplyService getReplyService() {
			return replyService;
		}

		public void setReplyService(ReplyService replyService) {
			this.replyService = replyService;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public Integer getProId() {
			return proId;
		}

		public void setProId(Integer proId) {
			this.proId = proId;
		}


		public Integer getCommentsId() {
			return commentsId;
		}


		public void setCommentsId(Integer commentsId) {
			this.commentsId = commentsId;
		}

	}