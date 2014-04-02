package com.HoliGuide.model;
import java.io.Serializable;
import java.util.List;

import javax.persistence.Id;
import com.googlecode.objectify.*;

public class Destination {
	
	static {
	    ObjectifyService.register(Destination.class);
	}
	
	@Id Long destinationId;
	String name;
	String country;
	String comment;
	Long itineraryId;
	String day;
	
	public Destination(){}
	
	public Destination(String name, String country, String comment,
			Long itineraryId, String day) {
		super();
		this.name = name;
		this.country = country;
		this.comment = comment;
		this.itineraryId = itineraryId;
		this.day = day;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Long getItineraryId() {
		return itineraryId;
	}

	public void setItineraryId(Long itineraryId) {
		this.itineraryId = itineraryId;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	public static List<Destination> retrieveAllDestinationByItineraryId(String itineraryId){
		Objectify objectify = ObjectifyService.begin();
		Query<Destination> query = objectify.query(Destination.class);
		query.filter("itineraryId =",itineraryId);
		return query.list();
	}
	
	public static List<Destination> retrieveAllDestination(){
		Objectify objectify = ObjectifyService.begin();
		Query<Destination> query = objectify.query(Destination.class);
		return query.list();
	}
	
	public void addDestination(String name, String country, String comment,
			Long itineraryId, String day){
		Objectify objectify = ObjectifyService.begin();
		Destination destination = new Destination( name,  country,  comment,
				 itineraryId, day);
		objectify.put(destination);
	}
	
	public static void removeDestination(long destinationId) {
		Objectify objectify = ObjectifyService.begin();
		objectify.delete(Destination.class, destinationId);
	}
}
