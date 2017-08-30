package com.fs.domain;

import java.util.Date;

public class UploadVO {
	private String fid;
	private String route;
	private Date regdate;
	private String bid;
	private String ismain="n";

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getIsmain() {
		return ismain;
	}

	public void setIsmain(String ismain) {
		this.ismain = ismain;
	}

	@Override
	public String toString() {
		return "UploadVO [fid=" + fid + ", route=" + route + ", regdate=" + regdate + ", bid=" + bid + ", ismain="
				+ ismain + "]";
	}

}
