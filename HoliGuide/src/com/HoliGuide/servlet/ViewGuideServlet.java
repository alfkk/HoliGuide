package com.HoliGuide.servlet;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.apphosting.utils.remoteapi.RemoteApiPb.Request;

@SuppressWarnings("serial")
public class ViewGuideServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		ArrayList<String []> arrList = new ArrayList<String []>();
		
		arrList.add(new String[]{"Edward", "My name is Edward. I like travelling to distant land.", "4"});
		arrList.add(new String[]{"Mickey Mouse", "I like travelling to a unique place.", "3"});
		arrList.add(new String[]{"Nguyen Thodd", "Whatever, not like anyone will see this description.", "1"});
		arrList.add(new String[]{"Batman Bin Suparman", "I am superhero!", "5"});
		arrList.add(new String[]{"Spongebob Squarepants", "I can guide you anywhere in Bikini Bottom.", "2"});
		arrList.add(new String[]{"Donald Duck", "Quack! Quack! Quack! Quack! Quack!", "3"});
		arrList.add(new String[]{"Nguyen Thiaw", "My hobby includes singing and travelling", "5"});
		
		req.setAttribute("guideList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/view_guide_list.jsp");
		rd.forward(req, resp);
	}
}
