package com.fs.domain;

import java.util.Date;

public class BoardVO {
	private String bid;
	private String title;
	private String content;
	private String writer;
	// private Date regdate;
	private String regdate;
	private String category;
	private String target;
	// private Date duedate;
	private String duedate;
	private String splace1;
	private String splace2;
	private String splace3;
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
		return regdate.substring(0, 10);
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
		return duedate.substring(0, 10);
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSplace1() {
		return splace1;
	}

	public void setSplace1(String splace1) {
		this.splace1 = splace1;
	}

	public String getSplace2() {
		return splace2;
	}

	public void setSplace2(String splace2) {
		this.splace2 = splace2;
	}

	public String getSplace3() {
		return splace3;
	}

	public void setSplace3(String splace3) {
		this.splace3 = splace3;
	}

	@Override
	public String toString() {
		return "BoardVO [bid=" + bid + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", category=" + category + ", target=" + target + ", duedate=" + duedate + ", splace1="
				+ splace1 + ", splace2=" + splace2 + ", splace3=" + splace3 + ", status=" + status + "]";
	}

}
