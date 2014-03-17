package com.HoliGuide.servlet;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.apphosting.utils.remoteapi.RemoteApiPb.Request;

@SuppressWarnings("serial")
public class CreateItineraryServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		ArrayList<String []> arrList = new ArrayList<String []>();
		
		arrList.add(new String[]{
				"Orchard Shopping Center", "Tourist Spot", "Singapore , Singapore", "This is the place to shop!"
		});
		arrList.add(new String[]{
				"Marina Bay Sands", "Hotel", "Singapore , Singapore", "Five star hotel with rooftop swimming pool."
		});
		arrList.add(new String[]{
				"Jumbo Seafood", "Restaurant", "Singapore , Singapore", "Good seafood."
		});
		arrList.add(new String[]{
				"Din Tai Fung", "Restaurant", "Singapore , Singapore", "One of the best dimsum you can find in Singapore!"
		});
		arrList.add(new String[]{
				"Kuta Beach Resort", "Hotel", "Bali , Indonesia", "Best Hotel in Bali."
		});
		arrList.add(new String[]{
				"Hardrock Cafe", "Restaurant", "Bali , Indonesia", "Good food and live performance at weekend!"
		});
		arrList.add(new String[]{
				"Paris Van Java", "Tourist Spot", "Bandung , Indonesia", "Cheap and good shopping center."
		});
		
		req.setAttribute("selectionList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/create_itinerary.jsp");
		rd.forward(req, resp);
	}
}
