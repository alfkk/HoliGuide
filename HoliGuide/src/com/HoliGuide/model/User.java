package com.HoliGuide.model;
import javax.persistence.Id;
import com.googlecode.objectify.*;

import java.io.Serializable;
import java.util.*;

public class User implements Serializable{
	
	static {
	    ObjectifyService.register(User.class);
	}
	
	@Id Long id; 
	String email;
	 String name;
	 String password;
	 String country;
	
	public User(){
	}
	
	public User(String name) {
		super();
		this.name = name;
	}
	
	public User(String name, String password, String country) {
		super();
		this.name = name;
		this.password = password;
		this.country = country;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCountry() {
		return country;
	}

	public void setcountry(String country) {
		this.country = country;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public User addUser( String name, String password, String country){
		Objectify objectify = ObjectifyService.begin();
		User user = new User(name,password,country);
		objectify.put(user); //id was auto-generated
		return user;
	}
	
	public User retrieve(String email){
		Objectify objectify = ObjectifyService.begin();
		return objectify.find(User.class, email);
	}
	
	public static List<User> retrieveAllUser(){
		Objectify objectify = ObjectifyService.begin();
		Query<User> query = objectify.query(User.class);
		return query.list();
	}
	
}
