package com.jm.app.action;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jm.app.bean.Comments;
import com.jm.app.bean.Project;
import com.jm.app.bean.User;
import com.jm.app.service.CommentsService;
import com.jm.app.service.DetailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SaveAction extends ActionSupport {

	// private DetailService detailService;
	private CommentsService commentsService;

	private String title;

	private Integer proId;
	private Map<String,Object> session2;
	private ActionContext context;
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
		

		Comments comments = new Comments();		
		comments.setContent(title);
		comments.setProject(project);
		comments.setIncludeDate(new Date());
		comments.setUser(user);
		commentsService.SaveComments(comments);

		return super.execute();
	}


	public CommentsService getCommentsService() {
		return commentsService;
	}

	public void setCommentsService(CommentsService commentsService) {
		this.commentsService = commentsService;
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

}
