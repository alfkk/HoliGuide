package com.HoliGuide.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Id;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class Review implements Serializable {
	
	static {
	    ObjectifyService.register(Review.class);
	}
	
	@Id Long reviewId;
	Long itineraryID;
	String destination;
	boolean accepted;
	String 	comment;
	String reviewerEmail;
	int day;

	public Review(Long reviewId, Long itineraryID, String destination,
			boolean accepted, String comment, String reviewerEmail, int day) {
		super();
		this.reviewId = reviewId;
		this.itineraryID = itineraryID;
		this.destination = destination;
		this.accepted = accepted;
		this.comment = comment;
		this.reviewerEmail = reviewerEmail;
		this.day = day;
	}
	public Long getReviewId() {
		return reviewId;
	}
	public void setReviewId(Long reviewId) {
		this.reviewId = reviewId;
	}
	public Long getItineraryID() {
		return itineraryID;
	}
	public void setItineraryID(Long itineraryID) {
		this.itineraryID = itineraryID;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public boolean isAccepted() {
		return accepted;
	}
	public void setAccepted(boolean accepted) {
		this.accepted = accepted;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getReviewerEmail() {
		return reviewerEmail;
	}
	public void setReviewerEmail(String reviewerEmail) {
		this.reviewerEmail = reviewerEmail;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	
	public Review addReview(Long reviewId, Long itineraryID, String destination,
			boolean accepted, String comment, String reviewerEmail, int day){
		Objectify objectify = ObjectifyService.begin();
		Review review = new Review(reviewId, itineraryID, destination,
				accepted, comment, reviewerEmail, day);
		objectify.put(review);
		return review;
	}
	
	public static List<Review> retrieveAllReviewByEmail(String itineraryId){
		Objectify objectify = ObjectifyService.begin();
		Query<Review> query = objectify.query(Review.class);
		query.filter("itineraryID =",itineraryId);
		return query.list();
	}
}
