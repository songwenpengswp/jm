package com.jm.app.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jm.app.dao.MessageDAO;

/**
 * UserMessage entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_message", catalog = "jm")
public class UserMessage implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Message message;
	private Integer isRead;

	// Constructors

	/** default constructor */
	public UserMessage() {
	}

	/** full constructor */
	public UserMessage(User user, Message message, Integer isRead) {
		this.user = user;
		this.message = message;
		this.isRead = isRead;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "message_id")
	public Message getMessage() {
		return this.message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	@Column(name = "isRead")
	public Integer getIsRead() {
		return this.isRead;
	}

	public void setIsRead(Integer isRead) {
		this.isRead = isRead;
	}
	
}