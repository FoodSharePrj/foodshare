package com.fs.domain;

public class ApplyStateVO {

	private String aid;
	private String bid;
	private String title;
	private String progress;
	private String regdate;
	private String ischoice;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
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
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getRegdate() {
		return regdate.substring(0, 16);
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getIschoice() {
		if(ischoice.equals("y")) {
			return "채택";
		}else {
			return "미채택";
		}
	}
	public void setIschoice(String ischoice) {
		this.ischoice = ischoice;
	}
	@Override
	public String toString() {
		return "ApplyStateVO [aid=" + aid + ", bid=" + bid + ", title=" + title + ", progress=" + progress
				+ ", regdate=" + regdate + ", ischoice=" + ischoice + "]";
	}
	
}
