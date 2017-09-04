package com.fs.domain;

public class ApplyVO {

	private String aid;
	private String applicant;
	private String content;
	private String regdate;
	private String ischoice;
	private String bid;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApplicant() {
		return applicant;
	}
	public void setApplicant(String applicant) {
		this.applicant = applicant;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate.substring(0, 16);
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getIschoice() {
		return ischoice;
	}
	public void setIschoice(String ischoice) {
		this.ischoice = ischoice;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	@Override
	public String toString() {
		return "ApplyVO [aid=" + aid + ", applicant=" + applicant + ", content=" + content + ", regdate=" + regdate
				+ ", ischoice=" + ischoice + ", bid=" + bid + "]";
	}

}
