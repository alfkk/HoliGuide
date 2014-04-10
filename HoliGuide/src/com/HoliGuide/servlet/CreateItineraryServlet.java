package com.HoliGuide.servlet;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.HoliGuide.model.Itinerary;
import com.HoliGuide.model.User;
import com.google.apphosting.utils.remoteapi.RemoteApiPb.Request;

@SuppressWarnings("serial")
public class CreateItineraryServlet extends HttpServlet {
	
	String start_DateTime = "";
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		//Capture the start time once the tester comes to the page
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		start_DateTime = dateFormat.format(date);
		
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
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		//Capture the end date once a tester submits the result
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String endDateTime = dateFormat.format(date);
	
		User user = new User();
		List<User> allUser = User.retrieveAllUser();
		ArrayList<String> userListArray = new ArrayList<String>();
		String email = "";
		
		//POPULATE USERS
		for(int i=1; i<(allUser.size()+5); i++) {
			userListArray.add("create1_user" + i + "@holiguide.com");
		}
		
		//ASSIGN USERS
		boolean doAdd = true;
		for(int i=0; i<userListArray.size(); i++){
			doAdd = true;
			if(allUser.isEmpty()) {
				user.addUser("create1_user1@holiguide.com",  "", "");
				email = "create1_user1@holiguide.com";
				break;
			}
			for(int o=0; o<allUser.size();o++){
				if(userListArray.get(i).equalsIgnoreCase(allUser.get(o).getName())){
					doAdd = false;
					break;
				}
			}
			if(doAdd) {
				user.addUser(userListArray.get(i), "", "");
				email = userListArray.get(i);
				break;
			}
		}
		
		String from_date = req.getParameter("from_date");
		String to_date = req.getParameter("to_date");
		String noOfPax = req.getParameter("trav_num");
		String budget = req.getParameter("budget");
		String country = req.getParameter("destination");
		String itinerary = req.getParameter("itinerary");
		
		Itinerary itineraryModel = new Itinerary();
		Itinerary newItinerary = new Itinerary(country, from_date, to_date, noOfPax, budget, itinerary, email, endDateTime, start_DateTime);
		itineraryModel.addItinerary(newItinerary);
		//resp.sendRedirect("app/survey_thankyou.jsp");
		resp.sendRedirect("app/success_page_traveller_create_itinerary.jsp");
	}
}
