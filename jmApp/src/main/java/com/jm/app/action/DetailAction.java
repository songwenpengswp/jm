 package com.jm.app.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jm.app.bean.Comments;
import com.jm.app.bean.Project;
import com.jm.app.bean.Prorder;
import com.jm.app.bean.User;
import com.jm.app.service.CommentsService;
import com.jm.app.service.DetailService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DetailAction extends ActionSupport {
	
    private ActionContext context;
	
	private Integer proId;
	
	private DetailService detailService;
	private CommentsService commentsService;
	private Map<String,Object> request;
	private String title;
	
	private Map<String,Object> session;
	@Override
	public String execute() throws Exception {
	
		context=ActionContext.getContext();
		request=(Map) context.get("request");
		
		Project pro=detailService.getProject(proId);
		request.put("project", pro);
		
		Project proj=detailService.getProjectWithSum(proId);
		request.put("project2", proj);
		List<Prorder> pror=detailService.getProrder(proId);
		request.put("prorder", pror);
		//区分项目编号
		List<Comments> comments=commentsService.getByProjectId(proId);
		request.put("com", comments);
		
		session=(Map) context.getSession();
        session.put("proId", proId);
				
		return super.execute();
	}
	
	public Integer getProId() {
		return proId;
	}

	public void setProId(Integer proId) {
		this.proId = proId;
	}

	public DetailService getDetailService() {
		return detailService;
	}

	public void setDetailService(DetailService detailService) {
		this.detailService = detailService;
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

	
}
