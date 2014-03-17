package com.HoliGuide.servlet;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.HoliGuide.model.*;

@SuppressWarnings("serial")
public class ViewItineraryServlet extends HttpServlet {
	ArrayList<Itinerary> arrList = null;
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		arrList = new ArrayList<Itinerary>();
		Itinerary itinerary1 = new Itinerary("1", "Singapore , Singapore", "Pending Review", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","0","6","Edward");
		arrList.add(itinerary1);
		
		Itinerary itinerary2 = new Itinerary("2", "Singapore , Singapore", "Reviewed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","2","2","Edward");
		arrList.add(itinerary2);
		
		Itinerary itinerary3 = new Itinerary("3", "Singapore , Singapore", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward");
		arrList.add(itinerary3);
		
		Itinerary itinerary4 = new Itinerary("4", "Singapore , Singapore", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward");
		arrList.add(itinerary4);
		
		Itinerary itinerary5 = new Itinerary("5", "Indonesia , Bali", "Pending Review", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","0","6","Edward");
		arrList.add(itinerary5);
		
		Itinerary itinerary6 = new Itinerary("6", "Indonesia , Bali", "Reviewed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","2","2","Edward");
		arrList.add(itinerary6);
		
		Itinerary itinerary7 = new Itinerary("7", "Indonesia , Bali", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward");
		arrList.add(itinerary7);
		
		Itinerary itinerary8 = new Itinerary("8", "Indonesia , Bali", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward");
		arrList.add(itinerary8);
		
		Itinerary itinerary9 = new Itinerary("9", "Singapore , Singapore", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward");
		arrList.add(itinerary9);
		
		req.setAttribute("itineraryList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/view_itinerary_list_traveller.jsp");
		rd.forward(req, resp);
	}
	
	public void addItinerary()
	{
		
	}
}
