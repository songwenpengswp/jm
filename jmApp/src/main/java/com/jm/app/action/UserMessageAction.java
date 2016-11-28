package com.jm.app.action;


import java.util.List;
import java.util.Map;

import com.jm.app.bean.Message;
import com.jm.app.bean.User;
import com.jm.app.bean.UserMessage;
import com.jm.app.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserMessageAction extends ActionSupport {

	private UserService userService;
	
	private ActionContext context;
	
	private Map<String,Object> request;
	
	private Map<String,Object> session;
	
	private Integer messageId;
	
	private Message message; 
	
	
	@Override
	public String execute() throws Exception {

		context=ActionContext.getContext();
		request=(Map) context.get("request");
		session=(Map) context.getSession();		
        User user=(User)session.get("user");
        if(user==null)
        	return ERROR;
        else{   
           
        	List<UserMessage> um=userService.findByUser(user.getId());      	
        	request.put("um",um);
        	 message=userService.findById(messageId);
        	return SUCCESS;
        }
	}
    
	

	
    
	public Integer getMessageId() {
		return messageId;
	}





	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}





	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}





	public Message getMessage() {
		return message;
	}





	public void setMessage(Message message) {
		this.message = message;
	}



}
