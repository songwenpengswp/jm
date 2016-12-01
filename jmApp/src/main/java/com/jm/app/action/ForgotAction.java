package com.jm.app.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jm.app.bean.User;
import com.jm.app.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class ForgotAction extends ActionSupport {
	private UserService userService;
	
	private String Password;
	private String tel;
	@Override
	public String execute() throws Exception {
		HttpSession session =ServletActionContext.getRequest().getSession();
        User user=(User) session.getAttribute("user");
		
		user.setPassword(Password);
		userService.updatPassw(user);
		return "val_success";		
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

}

