package com.jm.app.action;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.jm.app.bean.User;
import com.jm.app.service.UserService;
import com.jm.app.util.Mail;
import com.jm.app.util.MailUtil;
import com.opensymphony.xwork2.ActionSupport;

public class MailAction extends ActionSupport {

	private String mail;
	private UserService us;

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User user = (User) session.getAttribute("user");
		Mail mails = new Mail();
		mails.setHost("smtp.qq.com"); // 设置邮件服务器,如果不用QQ邮箱的,自己找找看相关的
		mails.setPortNumber("465"); // 设置邮件服务器端口号,默认25
		mails.setSender("977151314@qq.com"); // 发送人
		mails.setName("昵称"); // 发送人昵称
		mails.setReceiver(mail); // 接收人
		mails.setUsername("977151314@qq.com"); // 登录账号,一般都是和邮箱名一样
		mails.setPassword("iadxxyzdbgtpbeei"); // QQ邮箱登录第三方客户端时,密码框请输入“授权码”进行验证。其他的密码具体查看邮件服务器的说明
		mails.setSubject("尊敬的九马会员");
		// 创建一个临时用户注册ID
		String registerId = "" + Math.random() * Math.random();
		String url = "http://localhost:8080/jmApp/jm/MailAction.action?registerId="
				+ registerId;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		 String createtime = sdf.format(new Date());
		mails.setMessage("您的帐号" + user.getName() + "于" + createtime + "邮箱绑定成功");
		if (new MailUtil().send(mails)) {
			System.out.println("发送成功");

			user.setEmail(mail);
			us.updateUser(user);
			return super.execute();
		} else {
			System.out.println("发送失败");
		}
		return super.execute();
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public UserService getUs() {
		return us;
	}

	public void setUs(UserService us) {
		this.us = us;
	}

}
