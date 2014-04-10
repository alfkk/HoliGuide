package com.HoliGuide.model;
import java.io.Serializable;
import com.googlecode.objectify.*;

import java.util.*;
import javax.persistence.Id;

public class Feedback implements Serializable{
	
	static {
	    ObjectifyService.register(Feedback.class);
	}
	
	@Id Long id;
	String email;
	int friendliness;
	int knowledge;
	int communication;
	int helpfulness;
	int overall;
	String rater;
	String comment;
	String receiver;
	
	public Feedback(){
	}
	
	public Feedback(int friendliness, int knowledge, int communication,
			int helpfulness, int overall, String rater, String comment,
			String receiver, String email) {
		super();
		this.friendliness = friendliness;
		this.knowledge = knowledge;
		this.communication = communication;
		this.helpfulness = helpfulness;
		this.overall = overall;
		this.rater = rater;
		this.comment = comment;
		this.receiver = receiver;
		this.email= email;
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
	
	public String getEmail(){
		return email;
	}
	
	public Feedback addFeedback(int friendliness, int knowledge, int communication,
			int helpfulness, int overall, String rater, String comment,
			String receiver, String email){
		Objectify objectify = ObjectifyService.begin();
		Feedback feedback = new Feedback(friendliness, knowledge, communication, helpfulness, overall,
				rater, comment, receiver, email);
		objectify.put(feedback);
		return feedback;
	}
	
	public static List<Feedback> retrieveAllFeedbackByEmail(String email){
		Objectify objectify = ObjectifyService.begin();
		Query<Feedback> query = objectify.query(Feedback.class);
		query.filter("email =",email);
		return query.list();
	}
}
