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
		
		Itinerary itinerary6 = new Itinerary(Long.valueOf(5), "Indonesia , Bali", "Indonesia", "Reviewed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","2","2","Edward", "");
		arrList.add(itinerary6);
		
		Itinerary itinerary7 = new Itinerary(Long.valueOf(6), "Indonesia , Bali", "Indonesia", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward", "");
		arrList.add(itinerary7);
		
		Itinerary itinerary8 = new Itinerary(Long.valueOf(7), "Indonesia , Bali", "Indonesia", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward", "");
		arrList.add(itinerary8);
		
		Itinerary itinerary9 = new Itinerary(Long.valueOf(8), "Singapore , Singapore", "Indonesia", "Closed", "Jan 24 to 25 2014", "13 Dec 2013", "$1,050","4","3","Edward", "");
		arrList.add(itinerary9);
		
		String delete = req.getParameter("Delete");
		String id = null;
		if(delete != null){
			if(delete.equalsIgnoreCase("yes")){
				id=req.getParameter("id");
				System.out.println(id);
				arrList.remove(Integer.parseInt(id));
			}
		}
		req.setAttribute("itineraryList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/view_itinerary_list_traveller.jsp");
		rd.forward(req, resp);
	}
	
	public void addItinerary()
	{
		
	}
}
