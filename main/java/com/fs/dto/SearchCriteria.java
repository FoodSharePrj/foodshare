package com.fs.dto;

public class SearchCriteria {

	private int index;
	private String splace1;
	private String splace2;
	private String category;
	private String keyword;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "SearchCriteria [index=" + index + ", splace1=" + splace1 + ", splace2=" + splace2 + ", category="
				+ category + ", keyword=" + keyword + "]";
	}
}
