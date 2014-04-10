package com.HoliGuide.servlet;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.HoliGuide.model.*;
import java.lang.Math;

@SuppressWarnings("serial")
public class GiveFeedbackServlet extends HttpServlet {
	ArrayList<Feedback> arrList = new ArrayList<Feedback>();
	@SuppressWarnings("null")
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		
		
		String rater = req.getParameter("rater");
		String receiver = req.getParameter("receiver");
		
		if(rater != null){
			if(rater.equalsIgnoreCase("")){
				rater = "Edward";
			}else{
				rater = "Edward";
			}
		}else{
			rater = "Edward";
		}
		
		if(receiver != null){
				if(receiver.equalsIgnoreCase("")){
					receiver = "Edward";
				}else{
					receiver = "Edward";
				}
			
		}else{
			receiver = "Edward";
		}
		
		
		String comment = req.getParameter("comment");
		if(comment==null){
			comment = "This tour guide is just excellent";
		}
		
		
		Feedback feedback1 = new Feedback(4,5,4,3,(4+5+4+3)/4,rater,comment,receiver,"");
		arrList.add(feedback1);
		
		Feedback feedback2 = new Feedback(4,4,4,4,(4+4+4+4)/4,rater,comment,receiver,"");
		arrList.add(feedback2);
		
		req.setAttribute("feedbackList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/user_profile.jsp");
		rd.forward(req, resp);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		int firstFeedback = Integer.parseInt((String)req.getParameter("rating-input-1"));
		int secondFeedback = Integer.parseInt((String)req.getParameter("rating-input-2"));
		int thirdFeedback = Integer.parseInt((String)req.getParameter("rating-input-3"));
		int fourthFeedback = Integer.parseInt((String)req.getParameter("rating-input-4"));
		int overallFeedback = (firstFeedback+secondFeedback+thirdFeedback+fourthFeedback)/4;
		String rater = "Edward";
		String receiver = "Edward";
		String comment=req.getParameter("comment");
		
		Feedback feedback = new Feedback(firstFeedback, secondFeedback, thirdFeedback, fourthFeedback, overallFeedback, rater, comment, receiver,"");
		//HttpSession session = req.getSession();
		//session.setAttribute("feedback", feedback);
		arrList.add(feedback);
		req.setAttribute("feedbackList", arrList);
		RequestDispatcher rd = req.getRequestDispatcher("/app/user_profile.jsp");
		rd.forward(req, resp);
	}
}
