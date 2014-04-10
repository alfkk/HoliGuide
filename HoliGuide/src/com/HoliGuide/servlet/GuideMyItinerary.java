package com.HoliGuide.servlet;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.HoliGuide.model.*;

@SuppressWarnings("serial")
public class GuideMyItinerary extends HttpServlet {
	ArrayList<Itinerary> arrList = null;
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		arrList = new ArrayList<Itinerary>();
		Itinerary itinerary1 = new Itinerary(Long.valueOf(0), "Singapore , Singapore", "Singapore", "Pending Review", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","0","6","Edward", "");
		arrList.add(itinerary1);
		
		Itinerary itinerary2 = new Itinerary(Long.valueOf(1), "Singapore , Singapore", "Singapore", "Reviewed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","2","2","Edward", "");
		arrList.add(itinerary2);
		
		Itinerary itinerary3 = new Itinerary(Long.valueOf(2), "Singapore , Singapore", "Singapore", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward", "");
		arrList.add(itinerary3);
		
		Itinerary itinerary4 = new Itinerary(Long.valueOf(3), "Singapore , Singapore", "Singapore", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward", "");
		arrList.add(itinerary4);
		
		Itinerary itinerary5 = new Itinerary(Long.valueOf(4), "Indonesia , Bali", "Indonesia", "Pending Review", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","0","6","Edward", "");
		arrList.add(itinerary5);
		
		
		
		req.setAttribute("itineraryList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/guide_itinerary.jsp");
		rd.forward(req, resp);
	}
	
	public void addItinerary()
	{
		
	}
}
