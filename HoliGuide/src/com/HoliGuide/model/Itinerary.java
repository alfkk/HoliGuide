package com.HoliGuide.model;
import java.io.Serializable;
import javax.persistence.Id;


public class Itinerary implements Serializable{
	

	String itineraryID;
	String destination;
	String status;
	String travelPeriod;
	String creationDate;
	String budget;
	String reviewReceived;
	String noOfPax;
	String preferredTourGuide;
	
	public Itinerary(String itineraryID, String destination, String status,
			String travelPeriod, String creationDate, String budget,
			String reviewReceived, String noOfPax, String preferredTourGuide) {
		super();
		this.itineraryID = itineraryID;
		this.destination = destination;
		this.status = status;
		this.travelPeriod = travelPeriod;
		this.creationDate = creationDate;
		this.budget = budget;
		this.reviewReceived = reviewReceived;
		this.noOfPax = noOfPax;
		this.preferredTourGuide = preferredTourGuide;
	}

	public String getItineraryID() {
		return itineraryID;
	}

	public void setItineraryID(String itineraryID) {
		this.itineraryID = itineraryID;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTravelPeriod() {
		return travelPeriod;
	}

	public void setTravelPeriod(String travelPeriod) {
		this.travelPeriod = travelPeriod;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getReviewReceived() {
		return reviewReceived;
	}

	public void setReviewReceived(String reviewReceived) {
		this.reviewReceived = reviewReceived;
	}

	public String getNoOfPax() {
		return noOfPax;
	}

	public void setNoOfPax(String noOfPax) {
		this.noOfPax = noOfPax;
	}

	public String getPreferredTourGuide() {
		return preferredTourGuide;
	}

	public void setPreferredTourGuide(String preferredTourGuide) {
		this.preferredTourGuide = preferredTourGuide;
	}
	
	
	
	
}
