package com.fs.domain;

import java.util.Date;

public class BoardVO {
	private String bid;
	private String title;
	private String content;
	private String writer;
	//private Date regdate;
	private String regdate;
	private String category;
	private String target;
	//private Date duedate;
	private String duedate;
	private String splace;
	private String status;
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public String getSplace() {
		return splace;
	}
	public void setSplace(String splace) {
		this.splace = splace;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "BoardVO [bid=" + bid + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", category=" + category + ", target=" + target + ", duedate=" + duedate + ", splace="
				+ splace + ", status=" + status + "]";
	}
}
