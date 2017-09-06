package com.fs.domain;

public class ChatroomVO {

	private String roomname;
	private String player1;
	private String player2;
	private String progress;
	private String bid;
	
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public String getPlayer1() {
		return player1;
	}
	public void setPlayer1(String player1) {
		this.player1 = player1;
	}
	public String getPlayer2() {
		return player2;
	}
	public void setPlayer2(String player2) {
		this.player2 = player2;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	@Override
	public String toString() {
		return "ChatroomVO [roomname=" + roomname + ", player1=" + player1 + ", player2=" + player2 + ", progress="
				+ progress + ", bid=" + bid + "]";
	}
	
}
