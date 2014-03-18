package com.HoliGuide.model;
import java.io.Serializable;
import javax.persistence.Id;

public class Feedback implements Serializable{
	
	int friendliness;
	int knowledge;
	int communication;
	int helpfulness;
	int overall;
	String rater;
	String comment;
	String receiver;
	
	public Feedback(int friendliness, int knowledge, int communication,
			int helpfulness, int overall, String rater, String comment,
			String receiver) {
		super();
		this.friendliness = friendliness;
		this.knowledge = knowledge;
		this.communication = communication;
		this.helpfulness = helpfulness;
		this.overall = overall;
		this.rater = rater;
		this.comment = comment;
		this.receiver = receiver;
	}

	public int getFriendliness() {
		return friendliness;
	}

	public void setFriendliness(int friendliness) {
		this.friendliness = friendliness;
	}

	public int getKnowledge() {
		return knowledge;
	}

	public void setKnowledge(int knowledge) {
		this.knowledge = knowledge;
	}

	public int getCommunication() {
		return communication;
	}

	public void setCommunication(int communication) {
		this.communication = communication;
	}

	public int getHelpfulness() {
		return helpfulness;
	}

	public void setHelpfulness(int helpfulness) {
		this.helpfulness = helpfulness;
	}

	public int getOverall() {
		return overall;
	}

	public void setOverall(int overall) {
		this.overall = overall;
	}

	public String getRater() {
		return rater;
	}

	public void setRater(String rater) {
		this.rater = rater;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
}
