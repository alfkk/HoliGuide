package com.HoliGuide.model;
import java.io.Serializable;
import java.util.List;

import javax.persistence.Id;
import com.googlecode.objectify.*;

public class Itinerary implements Serializable{
	
  static {
	    ObjectifyService.register(Itinerary.class);
  }

	
	@Id Long itineraryID;
	String destination;
	String country;
	String status;
	String travelPeriod;
	String creationDate;
	String budget;
	String noOfPax;
	String email;
	String comment;
	String from_date;
	String to_date;
	String itinerary;
	String create_DateTimeStart;
	String create_DateTimeEnd;
	
	public Itinerary(){
	}
	public Itinerary(long itineraryID, String destination, String country, String status,
			String travelPeriod, String creationDate, String budget,
			String reviewReceived, String noOfPax, String email, String comment) {
		super();
		this.itineraryID = itineraryID;
		this.destination = destination;
		this.country = country;
		this.status = status;
		this.travelPeriod = travelPeriod;
		this.creationDate = creationDate;
		this.budget = budget;
		this.noOfPax = noOfPax;
		//this.preferredTourGuide = preferredTourGuide;
		this.email = email;
		this.comment = comment;
	}
	
	
	public Itinerary(String country, String from_date, String to_date, String noOfPax, String budget, String itinerary, String email, String create_DateTimeEnd, String create_DateTimeStart) {
		super();
		//this.itineraryID = itineraryID;
		this.country = country;
		this.from_date = from_date;
		this.to_date = to_date;
		this.noOfPax = noOfPax;
		this.budget = budget;
		this.itinerary = itinerary;
		this.email = email;
		this.create_DateTimeEnd = create_DateTimeEnd;
		this.create_DateTimeStart = create_DateTimeStart;
	}
	
	
	public Itinerary(String destination, String country, String status,
			String travelPeriod, String creationDate, String budget,
			String reviewReceived, String noOfPax, String email, String comment) {
		super();
		//this.itineraryID = itineraryID;
		this.destination = destination;
		this.country = country;
		this.status = status;
		this.travelPeriod = travelPeriod;
		this.creationDate = creationDate;
		this.budget = budget;
		this.noOfPax = noOfPax;
		//this.preferredTourGuide = preferredTourGuide;
		this.email = email;
		this.comment = comment;
	}

	public Long getItineraryID() {
		return itineraryID;
	}

	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
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

	public String getNoOfPax() {
		return noOfPax;
	}

	public void setNoOfPax(String noOfPax) {
		this.noOfPax = noOfPax;
	}
	
	public String comment() {
		return comment;
	}

	public void comment(String comment) {
		this.comment = comment;
	}
	
	public static List<Itinerary> retrieveAllItineraryByEmail(String email){
		Objectify objectify = ObjectifyService.begin();
		Query<Itinerary> query = objectify.query(Itinerary.class);
		query.filter("email =",email);
		return query.list();
	}
	
	public static List<Itinerary> retrieveAllItinerary(){
		Objectify objectify = ObjectifyService.begin();
		Query<Itinerary> query = objectify.query(Itinerary.class);
		return query.list();
	}
	
	public void addItinerary(Itinerary itinerary){
		Objectify objectify = ObjectifyService.begin();
		//Itinerary itinerary = new Itinerary(destination, country, status, travelPeriod, creationDate, budget, reviewReceived, noOfPax,email, comment);
		objectify.put(itinerary);
	}
	
	public static void removeItinerary(long itineraryId) {
		Objectify objectify = ObjectifyService.begin();
		objectify.delete(Itinerary.class, itineraryId);
	}
	
	public static void reproposeItinerary(Itinerary itinerary) {
		Objectify objectify = ObjectifyService.begin();
		objectify.put(itinerary);
	}		
}
